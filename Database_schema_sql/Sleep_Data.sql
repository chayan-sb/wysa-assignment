CREATE TABLE sleepData (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,        -- Auto-incrementing primary key
    userID VARCHAR(255) NOT NULL,                -- User ID
    sleepStruggleFrom_min INT,                   -- Min sleep struggle duration (in weeks)
    sleepStruggleFrom_max INT,                   -- Max sleep struggle duration (in weeks)
    bedTime DATETIME,                            -- Bedtime (datetime format)
    wakeTime DATETIME,                           -- Waketime (datetime format)
    sleepDuration DECIMAL(4, 2) CHECK (sleepDuration >= 0 AND sleepDuration <= 24),  -- Sleep duration (hours, 0-24)
    dataCollectionStep INT CHECK (dataCollectionStep >= 1 AND dataCollectionStep <= 4), -- Steps to resume
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,    -- Automatically set to current timestamp on creation
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, -- Automatically updated on modification
    deletedAt DATETIME DEFAULT NULL                -- Soft deletion (nullable)
);
