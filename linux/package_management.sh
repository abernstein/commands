# Setup Local Build Env
mkdir -p ~/rpmbuild/{BUILD,RPMS,SOURCES,SPECS,SRPMS}
if [ ! -e ~/.rpmmacros ]; then echo '%_topdir %(echo $HOME)/rpmbuild' > ~/.rpmmacros; else echo "Configuration File Exists"; fi

# View Current RPM Settings
rpm -–showrc

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

# Determine Package Relationships or Remove -p for installed package
rpm -qp --requires|provides|conflicts|whatrequires|whatprovides <PACKAGE>

# List Configuration Files Defined in Package
rpm -qpc <PACKAGE>

# List All Files Defined in Package
rpm -ql <PACKAGE>

# Verifying Package
rpm -V <OPTIONS> <PACKAGE>

# Define or Evaluate Custom Macros for RPM to Use
rpm --eval %_usrsrc
rpm --define '<MACRO> <VALUE>'

# Official RPM macros
cat /usr/lib/rpm/macros
# Per-system customizations
cat /etc/rpm/macros
# Per-user customizations
cat $HOME/.rpmmacros

# Clear Yum Cache
yum clean packages|metadata|dbcache|all

# Downgrade Package
yum downgrade <PACKAGE>

# Check for Available Updates
yum check-update
