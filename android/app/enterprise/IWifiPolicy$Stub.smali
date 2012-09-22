.class public abstract Landroid/app/enterprise/IWifiPolicy$Stub;
.super Landroid/os/Binder;
.source "IWifiPolicy.java"

# interfaces
.implements Landroid/app/enterprise/IWifiPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/IWifiPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/IWifiPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.IWifiPolicy"

.field static final TRANSACTION_addBlockedNetwork:I = 0x21

.field static final TRANSACTION_edmAddOrUpdate:I = 0x50

.field static final TRANSACTION_getAllowUserPolicyChanges:I = 0x43

.field static final TRANSACTION_getAllowUserProfiles:I = 0x41

.field static final TRANSACTION_getBlockedNetworks:I = 0x23

.field static final TRANSACTION_getDHCPEnabled:I = 0x26

.field static final TRANSACTION_getDefaultGateway:I = 0x2a

.field static final TRANSACTION_getDefaultIp:I = 0x28

.field static final TRANSACTION_getDefaultPrimaryDNS:I = 0x2c

.field static final TRANSACTION_getDefaultSecondaryDNS:I = 0x2e

.field static final TRANSACTION_getDefaultSubnetMask:I = 0x30

.field static final TRANSACTION_getMinimumRequiredSecurity:I = 0x47

.field static final TRANSACTION_getNetworkAnonymousIdValue:I = 0x20

.field static final TRANSACTION_getNetworkCaCertification:I = 0x1a

.field static final TRANSACTION_getNetworkClientCertificate:I = 0x1b

.field static final TRANSACTION_getNetworkDHCPEnabled:I = 0x32

.field static final TRANSACTION_getNetworkEAPType:I = 0x18

.field static final TRANSACTION_getNetworkGateway:I = 0x36

.field static final TRANSACTION_getNetworkIdentityValue:I = 0x1f

.field static final TRANSACTION_getNetworkIp:I = 0x34

.field static final TRANSACTION_getNetworkLinkSecurity:I = 0x5

.field static final TRANSACTION_getNetworkPSK:I = 0x1c

.field static final TRANSACTION_getNetworkPassword:I = 0x1e

.field static final TRANSACTION_getNetworkPhase2:I = 0x19

.field static final TRANSACTION_getNetworkPrimaryDNS:I = 0x38

.field static final TRANSACTION_getNetworkPrivateKey:I = 0x1d

.field static final TRANSACTION_getNetworkSSIDList:I = 0x2

.field static final TRANSACTION_getNetworkSecondaryDNS:I = 0x3a

.field static final TRANSACTION_getNetworkSubnetMask:I = 0x3c

.field static final TRANSACTION_getNetworkWEPKey1:I = 0xb

.field static final TRANSACTION_getNetworkWEPKey2:I = 0xc

.field static final TRANSACTION_getNetworkWEPKey3:I = 0xd

.field static final TRANSACTION_getNetworkWEPKey4:I = 0xe

.field static final TRANSACTION_getNetworkWEPKeyId:I = 0x17

.field static final TRANSACTION_getPasswordHidden:I = 0x4a

.field static final TRANSACTION_getPromptCredentialsEnabled:I = 0x45

.field static final TRANSACTION_getTlsCertificateSecurityLevel:I = 0x4d

.field static final TRANSACTION_getWifiProfile:I = 0x4f

.field static final TRANSACTION_isEnterpriseNetwork:I = 0x4b

.field static final TRANSACTION_isNetworkBlocked:I = 0x24

.field static final TRANSACTION_isNetworkSecure:I = 0x48

.field static final TRANSACTION_isWifiAllowed:I = 0x3f

.field static final TRANSACTION_removeBlockedNetwork:I = 0x22

.field static final TRANSACTION_removeNetworkConfiguration:I = 0x3

.field static final TRANSACTION_setAllowUserPolicyChanges:I = 0x42

.field static final TRANSACTION_setAllowUserProfiles:I = 0x40

.field static final TRANSACTION_setDHCPEnabled:I = 0x25

.field static final TRANSACTION_setDefaultGateway:I = 0x29

.field static final TRANSACTION_setDefaultIp:I = 0x27

.field static final TRANSACTION_setDefaultPrimaryDNS:I = 0x2b

.field static final TRANSACTION_setDefaultSecondaryDNS:I = 0x2d

.field static final TRANSACTION_setDefaultSubnetMask:I = 0x2f

.field static final TRANSACTION_setMinimumRequiredSecurity:I = 0x46

.field static final TRANSACTION_setNetworkAnonymousIdValue:I = 0x12

.field static final TRANSACTION_setNetworkCaCertificate:I = 0x15

.field static final TRANSACTION_setNetworkClientCertification:I = 0x14

.field static final TRANSACTION_setNetworkDHCPEnabled:I = 0x31

.field static final TRANSACTION_setNetworkGateway:I = 0x35

.field static final TRANSACTION_setNetworkIdentityValue:I = 0x11

.field static final TRANSACTION_setNetworkIp:I = 0x33

.field static final TRANSACTION_setNetworkLinkSecurity:I = 0x4

.field static final TRANSACTION_setNetworkPSK:I = 0xf

.field static final TRANSACTION_setNetworkPassword:I = 0x10

.field static final TRANSACTION_setNetworkPhase2:I = 0x13

.field static final TRANSACTION_setNetworkPrimaryDNS:I = 0x37

.field static final TRANSACTION_setNetworkPrivateKey:I = 0x16

.field static final TRANSACTION_setNetworkSSID:I = 0x1

.field static final TRANSACTION_setNetworkSecondaryDNS:I = 0x39

.field static final TRANSACTION_setNetworkSubnetMask:I = 0x3b

.field static final TRANSACTION_setNetworkWEPKey1:I = 0x7

.field static final TRANSACTION_setNetworkWEPKey2:I = 0x8

.field static final TRANSACTION_setNetworkWEPKey3:I = 0x9

.field static final TRANSACTION_setNetworkWEPKey4:I = 0xa

.field static final TRANSACTION_setNetworkWEPKeyId:I = 0x6

.field static final TRANSACTION_setPasswordHidden:I = 0x49

.field static final TRANSACTION_setPromptCredentialsEnabled:I = 0x44

.field static final TRANSACTION_setTlsCertificateSecurityLevel:I = 0x4c

.field static final TRANSACTION_setWifi:I = 0x3d

.field static final TRANSACTION_setWifiAllowed:I = 0x3e

.field static final TRANSACTION_setWifiProfile:I = 0x4e


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p0, p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IWifiPolicy;
    .registers 3
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_4

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_3
    return-object v0

    .line 29
    :cond_4
    const-string v1, "android.app.enterprise.IWifiPolicy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Landroid/app/enterprise/IWifiPolicy;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Landroid/app/enterprise/IWifiPolicy$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/enterprise/IWifiPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_7b0

    .line 884
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_9
    return v5

    .line 45
    :sswitch_a
    const-string v4, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 50
    :sswitch_10
    const-string v6, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkSSID(Ljava/lang/String;)Z

    move-result v2

    .line 54
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v2, :cond_23

    move v4, v5

    :cond_23
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 60
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_27
    const-string v4, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkSSIDList()Ljava/util/List;

    move-result-object v3

    .line 62
    .local v3, _result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_9

    .line 68
    .end local v3           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_37
    const-string v6, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->removeNetworkConfiguration(Ljava/lang/String;)Z

    move-result v2

    .line 72
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v2, :cond_4a

    move v4, v5

    :cond_4a
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 78
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_4e
    const-string v6, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 82
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkLinkSecurity(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 84
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v2, :cond_65

    move v4, v5

    :cond_65
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 90
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_69
    const-string v4, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 93
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkLinkSecurity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 100
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_7d
    const-string v6, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 104
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 105
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkWEPKeyId(Ljava/lang/String;I)Z

    move-result v2

    .line 106
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    if-eqz v2, :cond_94

    move v4, v5

    :cond_94
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 112
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v2           #_result:Z
    :sswitch_99
    const-string v6, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 116
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkWEPKey1(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 118
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    if-eqz v2, :cond_b0

    move v4, v5

    :cond_b0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 124
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_b5
    const-string v6, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 128
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 129
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkWEPKey2(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 130
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    if-eqz v2, :cond_cc

    move v4, v5

    :cond_cc
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 136
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_d1
    const-string v6, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 140
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 141
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkWEPKey3(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 142
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    if-eqz v2, :cond_e8

    move v4, v5

    :cond_e8
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 148
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_ed
    const-string v6, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 152
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 153
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkWEPKey4(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 154
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    if-eqz v2, :cond_104

    move v4, v5

    :cond_104
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 160
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_109
    const-string v4, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 163
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkWEPKey1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 170
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_11e
    const-string v4, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 173
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkWEPKey2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 174
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 180
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_133
    const-string v4, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 183
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkWEPKey3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 184
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 190
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_148
    const-string v4, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 193
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkWEPKey4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 194
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 200
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_15d
    const-string v6, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 204
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 205
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkPSK(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 206
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    if-eqz v2, :cond_174

    move v4, v5

    :cond_174
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 212
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_179
    const-string v6, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 216
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 217
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 218
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    if-eqz v2, :cond_190

    move v4, v5

    :cond_190
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 224
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_195
    const-string v6, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 228
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 229
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkIdentityValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 230
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    if-eqz v2, :cond_1ac

    move v4, v5

    :cond_1ac
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 236
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_1b1
    const-string v6, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 240
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 241
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkAnonymousIdValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 242
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    if-eqz v2, :cond_1c8

    move v4, v5

    :cond_1c8
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 248
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_1cd
    const-string v6, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 252
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 253
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkPhase2(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 254
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    if-eqz v2, :cond_1e4

    move v4, v5

    :cond_1e4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 260
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_1e9
    const-string v6, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 264
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 265
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkClientCertification(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 266
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    if-eqz v2, :cond_200

    move v4, v5

    :cond_200
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 272
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_205
    const-string v6, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 276
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 277
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkCaCertificate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 278
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    if-eqz v2, :cond_21c

    move v4, v5

    :cond_21c
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 284
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_221
    const-string v6, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 288
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 289
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkPrivateKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 290
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    if-eqz v2, :cond_238

    move v4, v5

    :cond_238
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 296
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_23d
    const-string v4, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 299
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkWEPKeyId(Ljava/lang/String;)I

    move-result v2

    .line 300
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 306
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:I
    :sswitch_252
    const-string v4, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 309
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkEAPType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 316
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_267
    const-string v4, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 319
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkPhase2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 320
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 326
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_27c
    const-string v4, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 329
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkCaCertification(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 330
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 336
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_291
    const-string v4, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 339
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkClientCertificate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 340
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 346
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_2a6
    const-string v4, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 349
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkPSK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 350
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 356
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_2bb
    const-string v4, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 359
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkPrivateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 360
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 366
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_2d0
    const-string v4, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 369
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 370
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 376
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_2e5
    const-string v4, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 379
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkIdentityValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 380
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 386
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_2fa
    const-string v4, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 389
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkAnonymousIdValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 390
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 396
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_30f
    const-string v6, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 399
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->addBlockedNetwork(Ljava/lang/String;)Z

    move-result v2

    .line 400
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    if-eqz v2, :cond_322

    move v4, v5

    :cond_322
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 406
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_327
    const-string v6, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 409
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->removeBlockedNetwork(Ljava/lang/String;)Z

    move-result v2

    .line 410
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    if-eqz v2, :cond_33a

    move v4, v5

    :cond_33a
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 416
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_33f
    const-string v4, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getBlockedNetworks()Ljava/util/List;

    move-result-object v3

    .line 418
    .restart local v3       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 424
    .end local v3           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_350
    const-string v6, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 428
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_36f

    move v1, v5

    .line 429
    .local v1, _arg1:Z
    :goto_360
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IWifiPolicy$Stub;->isNetworkBlocked(Ljava/lang/String;Z)Z

    move-result v2

    .line 430
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    if-eqz v2, :cond_36a

    move v4, v5

    :cond_36a
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v1           #_arg1:Z
    .end local v2           #_result:Z
    :cond_36f
    move v1, v4

    .line 428
    goto :goto_360

    .line 436
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_371
    const-string v6, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_38c

    move v0, v5

    .line 439
    .local v0, _arg0:Z
    :goto_37d
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->setDHCPEnabled(Z)Z

    move-result v2

    .line 440
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    if-eqz v2, :cond_387

    move v4, v5

    :cond_387
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_38c
    move v0, v4

    .line 438
    goto :goto_37d

    .line 446
    :sswitch_38e
    const-string v6, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getDHCPEnabled()Z

    move-result v2

    .line 448
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    if-eqz v2, :cond_39d

    move v4, v5

    :cond_39d
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 454
    .end local v2           #_result:Z
    :sswitch_3a2
    const-string v6, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->setDefaultIp(Ljava/lang/String;)Z

    move-result v2

    .line 458
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 459
    if-eqz v2, :cond_3b5

    move v4, v5

    :cond_3b5
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 464
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_3ba
    const-string v4, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getDefaultIp()Ljava/lang/String;

    move-result-object v2

    .line 466
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 472
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_3cb
    const-string v6, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 475
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->setDefaultGateway(Ljava/lang/String;)Z

    move-result v2

    .line 476
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    if-eqz v2, :cond_3de

    move v4, v5

    :cond_3de
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 482
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_3e3
    const-string v4, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getDefaultGateway()Ljava/lang/String;

    move-result-object v2

    .line 484
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 490
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_3f4
    const-string v6, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 493
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->setDefaultPrimaryDNS(Ljava/lang/String;)Z

    move-result v2

    .line 494
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 495
    if-eqz v2, :cond_407

    move v4, v5

    :cond_407
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 500
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_40c
    const-string v4, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 501
    invoke-virtual {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getDefaultPrimaryDNS()Ljava/lang/String;

    move-result-object v2

    .line 502
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 503
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 508
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_41d
    const-string v6, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 510
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 511
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->setDefaultSecondaryDNS(Ljava/lang/String;)Z

    move-result v2

    .line 512
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    if-eqz v2, :cond_430

    move v4, v5

    :cond_430
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 518
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_435
    const-string v4, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 519
    invoke-virtual {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getDefaultSecondaryDNS()Ljava/lang/String;

    move-result-object v2

    .line 520
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 521
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 526
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_446
    const-string v6, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 529
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->setDefaultSubnetMask(Ljava/lang/String;)Z

    move-result v2

    .line 530
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    if-eqz v2, :cond_459

    move v4, v5

    :cond_459
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 536
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_45e
    const-string v4, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 537
    invoke-virtual {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getDefaultSubnetMask()Ljava/lang/String;

    move-result-object v2

    .line 538
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 544
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_46f
    const-string v6, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 548
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_48e

    move v1, v5

    .line 549
    .restart local v1       #_arg1:Z
    :goto_47f
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkDHCPEnabled(Ljava/lang/String;Z)Z

    move-result v2

    .line 550
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 551
    if-eqz v2, :cond_489

    move v4, v5

    :cond_489
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v1           #_arg1:Z
    .end local v2           #_result:Z
    :cond_48e
    move v1, v4

    .line 548
    goto :goto_47f

    .line 556
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_490
    const-string v6, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 558
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 559
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkDHCPEnabled(Ljava/lang/String;)Z

    move-result v2

    .line 560
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 561
    if-eqz v2, :cond_4a3

    move v4, v5

    :cond_4a3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 566
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_4a8
    const-string v6, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 568
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 570
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 571
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkIp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 572
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 573
    if-eqz v2, :cond_4bf

    move v4, v5

    :cond_4bf
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 578
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_4c4
    const-string v4, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 580
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 581
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkIp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 582
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 583
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 588
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_4d9
    const-string v6, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 590
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 592
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 593
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkGateway(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 594
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 595
    if-eqz v2, :cond_4f0

    move v4, v5

    :cond_4f0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 600
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_4f5
    const-string v4, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 602
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 603
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkGateway(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 604
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 610
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_50a
    const-string v6, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 612
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 614
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 615
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkPrimaryDNS(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 616
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 617
    if-eqz v2, :cond_521

    move v4, v5

    :cond_521
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 622
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_526
    const-string v4, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 624
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 625
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkPrimaryDNS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 626
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 627
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 632
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_53b
    const-string v6, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 634
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 636
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 637
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkSecondaryDNS(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 638
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 639
    if-eqz v2, :cond_552

    move v4, v5

    :cond_552
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 644
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_557
    const-string v4, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 646
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 647
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkSecondaryDNS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 648
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 649
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 654
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_56c
    const-string v6, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 656
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 658
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 659
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkSubnetMask(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 660
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 661
    if-eqz v2, :cond_583

    move v4, v5

    :cond_583
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 666
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_588
    const-string v4, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 668
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 669
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkSubnetMask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 670
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 676
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_59d
    const-string v6, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 678
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5b8

    move v0, v5

    .line 679
    .local v0, _arg0:Z
    :goto_5a9
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->setWifi(Z)Z

    move-result v2

    .line 680
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 681
    if-eqz v2, :cond_5b3

    move v4, v5

    :cond_5b3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_5b8
    move v0, v4

    .line 678
    goto :goto_5a9

    .line 686
    :sswitch_5ba
    const-string v6, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 688
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5d5

    move v0, v5

    .line 689
    .restart local v0       #_arg0:Z
    :goto_5c6
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->setWifiAllowed(Z)Z

    move-result v2

    .line 690
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 691
    if-eqz v2, :cond_5d0

    move v4, v5

    :cond_5d0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_5d5
    move v0, v4

    .line 688
    goto :goto_5c6

    .line 696
    :sswitch_5d7
    const-string v6, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 698
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5f2

    move v0, v5

    .line 699
    .restart local v0       #_arg0:Z
    :goto_5e3
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->isWifiAllowed(Z)Z

    move-result v2

    .line 700
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 701
    if-eqz v2, :cond_5ed

    move v4, v5

    :cond_5ed
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_5f2
    move v0, v4

    .line 698
    goto :goto_5e3

    .line 706
    :sswitch_5f4
    const-string v6, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 708
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_60f

    move v0, v5

    .line 709
    .restart local v0       #_arg0:Z
    :goto_600
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->setAllowUserProfiles(Z)Z

    move-result v2

    .line 710
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 711
    if-eqz v2, :cond_60a

    move v4, v5

    :cond_60a
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_60f
    move v0, v4

    .line 708
    goto :goto_600

    .line 716
    :sswitch_611
    const-string v6, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 718
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_62c

    move v0, v5

    .line 719
    .restart local v0       #_arg0:Z
    :goto_61d
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getAllowUserProfiles(Z)Z

    move-result v2

    .line 720
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    if-eqz v2, :cond_627

    move v4, v5

    :cond_627
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_62c
    move v0, v4

    .line 718
    goto :goto_61d

    .line 726
    :sswitch_62e
    const-string v6, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 728
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_649

    move v0, v5

    .line 729
    .restart local v0       #_arg0:Z
    :goto_63a
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->setAllowUserPolicyChanges(Z)Z

    move-result v2

    .line 730
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 731
    if-eqz v2, :cond_644

    move v4, v5

    :cond_644
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_649
    move v0, v4

    .line 728
    goto :goto_63a

    .line 736
    :sswitch_64b
    const-string v6, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 737
    invoke-virtual {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getAllowUserPolicyChanges()Z

    move-result v2

    .line 738
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    if-eqz v2, :cond_65a

    move v4, v5

    :cond_65a
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 744
    .end local v2           #_result:Z
    :sswitch_65f
    const-string v6, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 746
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_67a

    move v0, v5

    .line 747
    .restart local v0       #_arg0:Z
    :goto_66b
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->setPromptCredentialsEnabled(Z)Z

    move-result v2

    .line 748
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 749
    if-eqz v2, :cond_675

    move v4, v5

    :cond_675
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_67a
    move v0, v4

    .line 746
    goto :goto_66b

    .line 754
    :sswitch_67c
    const-string v6, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 755
    invoke-virtual {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getPromptCredentialsEnabled()Z

    move-result v2

    .line 756
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 757
    if-eqz v2, :cond_68b

    move v4, v5

    :cond_68b
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 762
    .end local v2           #_result:Z
    :sswitch_690
    const-string v6, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 764
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 765
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->setMinimumRequiredSecurity(I)Z

    move-result v2

    .line 766
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 767
    if-eqz v2, :cond_6a3

    move v4, v5

    :cond_6a3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 772
    .end local v0           #_arg0:I
    .end local v2           #_result:Z
    :sswitch_6a8
    const-string v4, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 773
    invoke-virtual {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getMinimumRequiredSecurity()I

    move-result v2

    .line 774
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 775
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 780
    .end local v2           #_result:I
    :sswitch_6b9
    const-string v6, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 782
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 784
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6d8

    move v1, v5

    .line 785
    .local v1, _arg1:Z
    :goto_6c9
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IWifiPolicy$Stub;->isNetworkSecure(IZ)Z

    move-result v2

    .line 786
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 787
    if-eqz v2, :cond_6d3

    move v4, v5

    :cond_6d3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v1           #_arg1:Z
    .end local v2           #_result:Z
    :cond_6d8
    move v1, v4

    .line 784
    goto :goto_6c9

    .line 792
    .end local v0           #_arg0:I
    :sswitch_6da
    const-string v6, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 794
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6f5

    move v0, v5

    .line 795
    .local v0, _arg0:Z
    :goto_6e6
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->setPasswordHidden(Z)Z

    move-result v2

    .line 796
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 797
    if-eqz v2, :cond_6f0

    move v4, v5

    :cond_6f0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_6f5
    move v0, v4

    .line 794
    goto :goto_6e6

    .line 802
    :sswitch_6f7
    const-string v6, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 803
    invoke-virtual {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getPasswordHidden()Z

    move-result v2

    .line 804
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 805
    if-eqz v2, :cond_706

    move v4, v5

    :cond_706
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 810
    .end local v2           #_result:Z
    :sswitch_70b
    const-string v6, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 812
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 813
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v2

    .line 814
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 815
    if-eqz v2, :cond_71e

    move v4, v5

    :cond_71e
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 820
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_723
    const-string v6, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 822
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 823
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->setTlsCertificateSecurityLevel(I)Z

    move-result v2

    .line 824
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 825
    if-eqz v2, :cond_736

    move v4, v5

    :cond_736
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 830
    .end local v0           #_arg0:I
    .end local v2           #_result:Z
    :sswitch_73b
    const-string v4, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 831
    invoke-virtual {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getTlsCertificateSecurityLevel()I

    move-result v2

    .line 832
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 833
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 838
    .end local v2           #_result:I
    :sswitch_74c
    const-string v6, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 840
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_76e

    .line 841
    sget-object v6, Landroid/app/enterprise/WifiAdminProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/WifiAdminProfile;

    .line 846
    .local v0, _arg0:Landroid/app/enterprise/WifiAdminProfile;
    :goto_75f
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->setWifiProfile(Landroid/app/enterprise/WifiAdminProfile;)Z

    move-result v2

    .line 847
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 848
    if-eqz v2, :cond_769

    move v4, v5

    :cond_769
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 844
    .end local v0           #_arg0:Landroid/app/enterprise/WifiAdminProfile;
    .end local v2           #_result:Z
    :cond_76e
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/app/enterprise/WifiAdminProfile;
    goto :goto_75f

    .line 853
    .end local v0           #_arg0:Landroid/app/enterprise/WifiAdminProfile;
    :sswitch_770
    const-string v6, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 855
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 856
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getWifiProfile(Ljava/lang/String;)Landroid/app/enterprise/WifiAdminProfile;

    move-result-object v2

    .line 857
    .local v2, _result:Landroid/app/enterprise/WifiAdminProfile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 858
    if-eqz v2, :cond_78a

    .line 859
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 860
    invoke-virtual {v2, p3, v5}, Landroid/app/enterprise/WifiAdminProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 863
    :cond_78a
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 869
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Landroid/app/enterprise/WifiAdminProfile;
    :sswitch_78f
    const-string v4, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 871
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7ae

    .line 872
    sget-object v4, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 878
    .local v0, _arg0:Landroid/net/wifi/WifiConfiguration;
    :goto_7a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 879
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IWifiPolicy$Stub;->edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 880
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 875
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #_arg1:Ljava/lang/String;
    :cond_7ae
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;
    goto :goto_7a2

    .line 41
    :sswitch_data_7b0
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_27
        0x3 -> :sswitch_37
        0x4 -> :sswitch_4e
        0x5 -> :sswitch_69
        0x6 -> :sswitch_7d
        0x7 -> :sswitch_99
        0x8 -> :sswitch_b5
        0x9 -> :sswitch_d1
        0xa -> :sswitch_ed
        0xb -> :sswitch_109
        0xc -> :sswitch_11e
        0xd -> :sswitch_133
        0xe -> :sswitch_148
        0xf -> :sswitch_15d
        0x10 -> :sswitch_179
        0x11 -> :sswitch_195
        0x12 -> :sswitch_1b1
        0x13 -> :sswitch_1cd
        0x14 -> :sswitch_1e9
        0x15 -> :sswitch_205
        0x16 -> :sswitch_221
        0x17 -> :sswitch_23d
        0x18 -> :sswitch_252
        0x19 -> :sswitch_267
        0x1a -> :sswitch_27c
        0x1b -> :sswitch_291
        0x1c -> :sswitch_2a6
        0x1d -> :sswitch_2bb
        0x1e -> :sswitch_2d0
        0x1f -> :sswitch_2e5
        0x20 -> :sswitch_2fa
        0x21 -> :sswitch_30f
        0x22 -> :sswitch_327
        0x23 -> :sswitch_33f
        0x24 -> :sswitch_350
        0x25 -> :sswitch_371
        0x26 -> :sswitch_38e
        0x27 -> :sswitch_3a2
        0x28 -> :sswitch_3ba
        0x29 -> :sswitch_3cb
        0x2a -> :sswitch_3e3
        0x2b -> :sswitch_3f4
        0x2c -> :sswitch_40c
        0x2d -> :sswitch_41d
        0x2e -> :sswitch_435
        0x2f -> :sswitch_446
        0x30 -> :sswitch_45e
        0x31 -> :sswitch_46f
        0x32 -> :sswitch_490
        0x33 -> :sswitch_4a8
        0x34 -> :sswitch_4c4
        0x35 -> :sswitch_4d9
        0x36 -> :sswitch_4f5
        0x37 -> :sswitch_50a
        0x38 -> :sswitch_526
        0x39 -> :sswitch_53b
        0x3a -> :sswitch_557
        0x3b -> :sswitch_56c
        0x3c -> :sswitch_588
        0x3d -> :sswitch_59d
        0x3e -> :sswitch_5ba
        0x3f -> :sswitch_5d7
        0x40 -> :sswitch_5f4
        0x41 -> :sswitch_611
        0x42 -> :sswitch_62e
        0x43 -> :sswitch_64b
        0x44 -> :sswitch_65f
        0x45 -> :sswitch_67c
        0x46 -> :sswitch_690
        0x47 -> :sswitch_6a8
        0x48 -> :sswitch_6b9
        0x49 -> :sswitch_6da
        0x4a -> :sswitch_6f7
        0x4b -> :sswitch_70b
        0x4c -> :sswitch_723
        0x4d -> :sswitch_73b
        0x4e -> :sswitch_74c
        0x4f -> :sswitch_770
        0x50 -> :sswitch_78f
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
