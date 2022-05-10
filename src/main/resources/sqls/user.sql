DROP TABLE USERS CASCADE CONSTRAINTS;

CREATE TABLE USERS
(
  ID         NUMBER,
  NAME       VARCHAR2(50 BYTE),
  USERNAME   VARCHAR2(50 BYTE),
  PASSWORD   VARCHAR2(50 BYTE),
  EMAIL      VARCHAR2(50 BYTE),
  USER_ROLE  VARCHAR2(3 BYTE)
);

SET DEFINE OFF;
--
--SQL Statement which produced this data:
--  SELECT 
--     ROWID, U.ID, U.EMAIL, U.NAME, 
--     U.PASSWORD, U.USER_ROLE, U.USERNAME
--  FROM IHR.USERS U
--
Insert into USERS
   (ID, EMAIL, NAME, PASSWORD, USER_ROLE, USERNAME)
 Values
   (1, 'kanna@123.com', 'sevanthi', '$2a$10$Eq.Ufq/Lmoyv44u25eGGU.4jVFOpCW6L/XC9nXeazEpduNfJrbx2O', 
    'USER', 'sevanthi123');
Insert into USERS
   (ID, EMAIL, NAME, PASSWORD, USER_ROLE, USERNAME)
 Values
   (2, 'test@123.com', 'kanna', '$2a$10$uunCOnMhnwxnpMgpkfIqWOwghYpqmys8jwJFoRTkKIJIWc9xr9yn2', 
    'USER', 'kanna123');
COMMIT;
