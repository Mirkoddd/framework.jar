.class public Landroid/app/admin/DevicePolicyManager$MiscPolicy;
.super Ljava/lang/Object;
.source "DevicePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/DevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MiscPolicy"
.end annotation


# instance fields
.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field final synthetic this$0:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method private constructor <init>(Landroid/app/admin/DevicePolicyManager;)V
    .registers 2
    .parameter

    .prologue
    .line 3019
    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->this$0:Landroid/app/admin/DevicePolicyManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3020
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/admin/DevicePolicyManager;Landroid/app/admin/DevicePolicyManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3014
    invoke-direct {p0, p1}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    return-void
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 3023
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_14

    .line 3024
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->this$0:Landroid/app/admin/DevicePolicyManager;

    #getter for: Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/app/admin/DevicePolicyManager;->access$500(Landroid/app/admin/DevicePolicyManager;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 3027
    :cond_14
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method


# virtual methods
.method public allowBluetooth(Z)Z
    .registers 3
    .parameter "enable"

    .prologue
    .line 3092
    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/app/enterprise/BluetoothPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/BluetoothPolicy;->allowBluetooth(Z)Z

    move-result v0

    return v0
.end method

.method public allowWiFi(Z)Z
    .registers 3
    .parameter "enable"

    .prologue
    .line 3059
    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/WifiPolicy;->setWifiAllowed(Z)Z

    move-result v0

    return v0
.end method

.method public installCertificateWithType(Ljava/lang/String;[B)V
    .registers 4
    .parameter "type"
    .parameter "value"

    .prologue
    .line 3037
    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getSecurityPolicy()Landroid/app/enterprise/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/enterprise/SecurityPolicy;->installCertificateWithType(Ljava/lang/String;[B)V

    .line 3038
    return-void
.end method

.method public isBluetoothEnabled(Z)Z
    .registers 3
    .parameter "showMsg"

    .prologue
    .line 3103
    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/app/enterprise/BluetoothPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/BluetoothPolicy;->isBluetoothEnabled()Z

    move-result v0

    return v0
.end method

.method public isCameraEnabled(Z)Z
    .registers 3
    .parameter "showMsg"

    .prologue
    .line 3125
    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public isExternalStorageEncrypted()Z
    .registers 2

    .prologue
    .line 3186
    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getSecurityPolicy()Landroid/app/enterprise/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/SecurityPolicy;->isExternalStorageEncrypted()Z

    move-result v0

    return v0
.end method

.method public isInternalStorageEncrypted()Z
    .registers 2

    .prologue
    .line 3177
    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getSecurityPolicy()Landroid/app/enterprise/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/SecurityPolicy;->isInternalStorageEncrypted()Z

    move-result v0

    return v0
.end method

.method public isMicrophoneEnabled(Z)Z
    .registers 3
    .parameter "showMsg"

    .prologue
    .line 3147
    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public isWiFiEnabled(Z)Z
    .registers 3
    .parameter "showMsg"

    .prologue
    .line 3070
    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/WifiPolicy;->isWifiAllowed(Z)Z

    move-result v0

    return v0
.end method

.method public setBluetoothState(Z)Z
    .registers 3
    .parameter "enable"

    .prologue
    .line 3081
    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/app/enterprise/BluetoothPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/BluetoothPolicy;->setBluetoothState(Z)Z

    move-result v0

    return v0
.end method

.method public setCameraState(Z)Z
    .registers 3
    .parameter "enable"

    .prologue
    .line 3114
    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/RestrictionPolicy;->setCameraState(Z)Z

    move-result v0

    return v0
.end method

.method public setExternalStorageEncryption(Z)V
    .registers 3
    .parameter "isEncrypt"

    .prologue
    .line 3168
    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getSecurityPolicy()Landroid/app/enterprise/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/SecurityPolicy;->setExternalStorageEncryption(Z)V

    .line 3169
    return-void
.end method

.method public setInternalStorageEncryption(Z)V
    .registers 3
    .parameter "isEncrypt"

    .prologue
    .line 3158
    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getSecurityPolicy()Landroid/app/enterprise/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/SecurityPolicy;->setInternalStorageEncryption(Z)V

    .line 3159
    return-void
.end method

.method public setMicrophoneState(Z)Z
    .registers 3
    .parameter "enable"

    .prologue
    .line 3136
    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/RestrictionPolicy;->setMicrophoneState(Z)Z

    move-result v0

    return v0
.end method

.method public setWiFiState(Z)Z
    .registers 3
    .parameter "enable"

    .prologue
    .line 3048
    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/WifiPolicy;->setWifi(Z)Z

    move-result v0

    return v0
.end method
