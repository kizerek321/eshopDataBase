USE WKdzik;
GO
DECLARE @sql NVARCHAR(MAX) = '';

SELECT @sql += 'ALTER TABLE ' + QUOTENAME(OBJECT_SCHEMA_NAME(parent_object_id)) + '.' +
               QUOTENAME(OBJECT_NAME(parent_object_id)) +
               ' DROP CONSTRAINT ' + QUOTENAME(name) + ';' + CHAR(10)
FROM sys.foreign_keys;

EXEC sp_executesql @sql;

-- Step 1: Disable foreign key constraints
EXEC sp_MSforeachtable @command1="ALTER TABLE ? NOCHECK CONSTRAINT ALL";

-- Step 2: Drop all tables
EXEC sp_MSforeachtable @command1="DROP TABLE ?";

-- Step 3: Re-enable foreign key constraints (optional, after re-creating tables)
EXEC sp_MSforeachtable @command1="ALTER TABLE ? CHECK CONSTRAINT ALL";
