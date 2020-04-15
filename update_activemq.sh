#!/bin/bash

grep '<import resource\=\"jetty.xml\"\/>' test.xml
if $? == 1 then 
	sed -i '/<\/beans>$/i \  <import resource\=\"jetty.xml\"\/>\n' test.xml