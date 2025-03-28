CREATE VIEW DSS_LOAD AS SELECT F2727,F2728,F2729,F2730,F2731,F2732,F253,F2733 FROM DSS_DCT;

INSERT INTO DSS_LOAD VALUES
(30,Portal,sample_nutritionfaktory_Resources,BITMAPS,estore_carousel.xml,2017078 12:19:14,@DJSF @FMT(T6F,@NOW),D5BE7975),
(30,Portal,sample_nutritionfaktory_Resources,BITMAPS,estore_carousel1.jpg,2017041 11:06:54,@DJSF @FMT(T6F,@NOW),C3BBDA49),
(30,Portal,sample_nutritionfaktory_Resources,BITMAPS,estore_store_001_hour.png,2018138 11:42:50,@DJSF @FMT(T6F,@NOW),5B3A1C3B),
(30,Portal,sample_nutritionfaktory_Resources,BITMAPS,estore_store_001_select.png,2018141 07:25:14,@DJSF @FMT(T6F,@NOW),F18FD553),
(30,Portal,sample_nutritionfaktory_Resources,BITMAPS,mstore_carousel.xml,2020089 11:47:06,@DJSF @FMT(T6F,@NOW),28046C18),
(30,Portal,sample_nutritionfaktory_Resources,BITMAPS,mstore_carousel1.jpg,2017041 11:06:54,@DJSF @FMT(T6F,@NOW),C3BBDA49),
(30,Portal,sample_nutritionfaktory_Resources,BITMAPS,mstore_store_001_hour.png,2020086 09:37:20,@DJSF @FMT(T6F,@NOW),E806C8DC),
(30,Portal,sample_nutritionfaktory_Resources,BITMAPS,mstore_store_001_select.png,2018137 14:24:52,@DJSF @FMT(T6F,@NOW),F18FD553),
(30,Portal,sample_nutritionfaktory_Resources,BITMAPS,rct_header.bmp,2008192 08:46:44,@DJSF @FMT(T6F,@NOW),46A2BEDF),
(30,Portal,sample_nutritionfaktory_Resources,BITMAPS,xstore_email_logo.png,2017197 13:11:42,@DJSF @FMT(T6F,@NOW),4779CD79),
(30,Portal,sample_nutritionfaktory_Resources,ROOT,INSTALL.sql,2019034 16:25:44,@DJSF @FMT(T6F,@NOW),08BB7C9C),

DELETE FROM DSS_TAB WHERE LEFT(F2729,CHARINDEX('\',F2729+'\')-1) IN (SELECT LEFT(F2729,CHARINDEX('\',F2729+'\')-1) FROM DSS_LOAD);
@UPDATE_BATCH(JOB=ADDRPL,TAR=DSS_TAB,KEY=F2729=:F2729 AND F2730=:F2730 AND F2731=:F2731,
SRC=SELECT * FROM DSS_LOAD);
DROP TABLE DSS_LOAD;

