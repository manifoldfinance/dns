# `devops-dns`

> DNS ZONE

## Overview

- manifoldfinance.com
- manifoldx.{org,com,net}
- sushirelay.com
- openmev.{org,com,net}
- (.*).{gtld}


### SPF Record config for non-email domains

```tsv
Type	Name	Content
TXT	securerpc.com	v= spf1 - all
TXT	** domainkey	v=DKIM1; p=
TXT	- dmarc	v= DMARC 1;p= reject ; sp=reject; adkim=s; aspf=s;
```
