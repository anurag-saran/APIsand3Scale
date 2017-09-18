#!/bin/bash
pwd
#cd /Users/anuragsaran/Documents/MW/3scale

#Step 1

#Step 2
/usr/local/bin/3scale-cli import swagger -f https://raw.githubusercontent.com/kasriniv/jubilant-fid-succotash/master/petstoreswagger.json > registerService.txt
#grep "Service with id" registerService.txt  | cut -d ' ' -f 7 > serviceId.txt
serviceID="$(grep 'Service with id' registerService.txt  | cut -d ' ' -f 7)"
echo "ServiceID: " $serviceID

#step 3
plandata="$(curl -X POST "https://fid-poc-admin.3scale.net/admin/api/services/$serviceID/application_plans.xml" -d 'access_token=c27e0c1e635436682ee5271661bb8652336a4600927c3243f474c44c9a1193d8&name=fidplan1&system_name=fidplan1')"
echo "***************************************************************************************"
echo "PlanData : " $plandata
planID=$(sed -ne '/id/{s/.*<id>\(.*\)<\/id>.*/\1/p;q;}' <<< "$plandata")
echo "PlanID : " $planID

#Step 4
curl -v  -X POST "https://fid-poc-admin.3scale.net/admin/api/accounts/2445582121014/applications.xml" -d "access_token=c27e0c1e635436682ee5271661bb8652336a4600927c3243f474c44c9a1193d8&plan_id=$planID&name=fidapp1&description=fidelity+application1" > Result.txt

