@echo off
java -Xms64M -Xmx256M -cp .;xercesImpl-2.9.1.jar;xml-apis-1.3.04.jar;dmfa-xmlvalidator-2.20231.3.jar be.smalsmvm.dmfa.xml.XmlValidatorBatch %1 %2