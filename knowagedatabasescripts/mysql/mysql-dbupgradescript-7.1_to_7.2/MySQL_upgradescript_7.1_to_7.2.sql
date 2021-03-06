--- START ---
-- 21/10/2019 Alberto Nale
ALTER TABLE SBI_CROSS_NAVIGATION ADD FROM_DOC_ID INTEGER DEFAULT NULL;
-- Create foreign key between SBI_CROSS_NAVIGATION and SBI_OBJECTS
ALTER TABLE SBI_CROSS_NAVIGATION ADD CONSTRAINT FOREIGN KEY FK_SBI_CROSS_NAVIGATION_1 (FROM_DOC_ID) REFERENCES SBI_OBJECTS(BIOBJ_ID);

ALTER TABLE SBI_CROSS_NAVIGATION ADD TO_DOC_ID INTEGER DEFAULT NULL;
-- Create foreign key between SBI_CROSS_NAVIGATION and SBI_OBJECTS
ALTER TABLE SBI_CROSS_NAVIGATION ADD CONSTRAINT FOREIGN KEY FK_SBI_CROSS_NAVIGATION_2 (TO_DOC_ID) REFERENCES SBI_OBJECTS(BIOBJ_ID);

ALTER TABLE SBI_CROSS_NAVIGATION ADD COLUMN POPUP_OPTIONS VARCHAR(4000) NULL DEFAULT NULL AFTER BREADCRUMB;

-- 14/02/2020 Alberto Nale
ALTER TABLE SBI_MENU ADD ICON VARCHAR(1000) NULL;
ALTER TABLE SBI_MENU ADD CUST_ICON VARCHAR(4000) NULL;

-- 2020/04/10 Alberto Nale
UPDATE SBI_ALERT_LISTENER SET TEMPLATE='angular_1.4/tools/alert/listeners/kpiListener/templates/kpiListener.html' WHERE NAME='KPI Listener';
UPDATE SBI_ALERT_ACTION SET TEMPLATE='angular_1.4/tools/alert/actions/executeETL/templates/executeETL.html' WHERE NAME= 'Execute ETL Document';
UPDATE SBI_ALERT_ACTION SET TEMPLATE='angular_1.4/tools/alert/actions/sendMail/templates/sendMail.html' WHERE NAME= 'Send mail';
UPDATE SBI_ALERT_ACTION SET TEMPLATE='angular_1.4/tools/alert/actions/contextBroker/templates/contextBroker.html' WHERE NAME= 'Context Broker';