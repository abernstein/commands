# Find unique RPM builds
rpm -qa | grep <PACKAGE>

# Evaulate package details in RPM
rpm -qi <PACKAGE>

# Review Installation History
rpm -qa --queryformat "%{installtime} (%{installtime:date}) %{name}\n" | sort -n

# List last installed packages from RPM
rpm -qa --last | head

# Custom Output Filenames in Multiple Package Queries
rpm -q --queryformat "[%-15{=NAME} %-50{FILENAMES}\n]" <PACKAGE1> <PACKAGE2>

# Determine Installation Time for a Specific Package
rpm -q --qf "%{NAME}-%{VERSION}-%{RELEASE} %{INSTALLTIME:date}\n" <PACKAGE(S)>

# Determine Dependencies for a Specific Package
rpm -q --qf "[%{REQUIRENAME} %{REQUIREFLAGS:depflags} %{REQUIREVERSION}\n]" <PACKAGE(S)>

# List Configuration Files Defined in Package
rpm -qpc <PACKAGE>

# List All Files Defined in Package
rpm -qpl <PACKAGE>

# Verifying Package
rpm -V <OPTIONS> <PACKAGE>

# Clear Yum Cache
yum clean |packages|metadata|dbcache|all

# Downgrade Package
yum downgrade <PACKAGE>
