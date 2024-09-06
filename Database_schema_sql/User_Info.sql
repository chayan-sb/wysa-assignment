CREATE TABLE user (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,        -- Auto-incrementing primary key
    userID VARCHAR(255) NOT NULL UNIQUE,         -- Unique User ID
    firstName VARCHAR(32),                       -- First Name (up to 32 characters)
    lastName VARCHAR(32),                        -- Last Name (up to 32 characters)
    emailID VARCHAR(255) NOT NULL UNIQUE,        -- Email ID (unique and required)
    password VARCHAR(255),                       -- Password (encrypted) (length can be adjusted based on hash size)
    phoneCode VARCHAR(10),                       -- Phone code
    phoneNumber VARCHAR(20),                     -- Phone number
    city VARCHAR(255),                           -- City
    state VARCHAR(255),                          -- State
    country VARCHAR(255),                        -- Country
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,    -- Automatically set to current timestamp on creation
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, -- Automatically updated on modification
    deletedAt DATETIME DEFAULT NULL               -- Soft deletion (nullable)
);
