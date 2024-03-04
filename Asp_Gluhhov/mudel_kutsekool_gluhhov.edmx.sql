
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 03/04/2024 23:21:38
-- Generated from EDMX file: C:\Users\Sergei\source\repos\Asp_Gluhhov\Asp_Gluhhov\mudel_kutsekool_gluhhov.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [mudel_kutsekool_gluhhov];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Opilanes'
CREATE TABLE [dbo].[Opilanes] (
    [opilaneid] int IDENTITY(1,1) NOT NULL,
    [nimi] nvarchar(max)  NOT NULL,
    [perekonnanimi] nvarchar(max)  NOT NULL,
    [synniaeg] datetime  NOT NULL,
    [Ryhm_ryhmid] int  NOT NULL
);
GO

-- Creating table 'Ryhms'
CREATE TABLE [dbo].[Ryhms] (
    [ryhmid] int IDENTITY(1,1) NOT NULL,
    [ryhmnimi] nvarchar(max)  NOT NULL,
    [osakond] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [opilaneid] in table 'Opilanes'
ALTER TABLE [dbo].[Opilanes]
ADD CONSTRAINT [PK_Opilanes]
    PRIMARY KEY CLUSTERED ([opilaneid] ASC);
GO

-- Creating primary key on [ryhmid] in table 'Ryhms'
ALTER TABLE [dbo].[Ryhms]
ADD CONSTRAINT [PK_Ryhms]
    PRIMARY KEY CLUSTERED ([ryhmid] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Ryhm_ryhmid] in table 'Opilanes'
ALTER TABLE [dbo].[Opilanes]
ADD CONSTRAINT [FK_RyhmOpilane]
    FOREIGN KEY ([Ryhm_ryhmid])
    REFERENCES [dbo].[Ryhms]
        ([ryhmid])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RyhmOpilane'
CREATE INDEX [IX_FK_RyhmOpilane]
ON [dbo].[Opilanes]
    ([Ryhm_ryhmid]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------