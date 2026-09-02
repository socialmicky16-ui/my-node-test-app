# Step 1: Base image
FROM node:18-alpine

# Step 2: Establish application directory
WORKDIR /usr/src/app

# Step 3: Copy package files first
COPY package*.json ./

# Step 4: Install production dependencies
RUN npm install --omit=dev

# Step 5: Copy application source files
COPY . .

# Step 6: Expose the system port
EXPOSE 8080

# Step 7: Run command
CMD ["npm", "start"]
