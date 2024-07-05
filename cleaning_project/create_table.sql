CREATE TABLE layoffs (
    company VARCHAR(255),
    location VARCHAR(255),
    industry VARCHAR(255),
    total_laid_off INT,
    percentage_laid_off DECIMAL(5, 2),
    date DATE,
    stage VARCHAR(255),
    country VARCHAR(255),
    funds_raised_millions DECIMAL(10, 2)
);