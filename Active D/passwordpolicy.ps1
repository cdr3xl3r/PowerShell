# This PowerShell script sets the default domain password policy for the domain "drexle735.local"

# Set the default domain password policy
Set-ADDefaultDomainPasswordPolicy `
    -Identity "drexle735.local" ` # Specifies the Active Directory domain
    -ComplexityEnabled $false `   # Specifies whether password complexity is enabled for the password policy
    -LockoutDuration 20 `         # Specifies the duration (in minutes) that an account will be locked after the number of failed login attempts
    -LockoutObservationWindow 25 `# Specifies the time period (in minutes) in which repeated failed login attempts will cause an account lockout
    -LockoutThreshold 10 `        # Specifies the number of failed login attempts that will trigger an account lockout
    -MaxPasswordAge 180 `         # Specifies the maximum age (in days) of a password before it must be changed
    -MinPasswordLength 8 `        # Specifies the minimum length of a password
    -PasswordHistoryCount 10      # Specifies the number of unique new passwords before an old password can be reused

# Note: Remove `-WhatIf` and `-Confirm` parameters if you want to apply changes directly.
# The `-WhatIf` parameter simulates the changes that would be made by the script without actually applying them.
# The `-Confirm` parameter prompts you for confirmation before executing the cmdlet.
  # Forces an immediate update of Group Policy settings
```