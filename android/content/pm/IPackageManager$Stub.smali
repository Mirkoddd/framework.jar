.class public abstract Landroid/content/pm/IPackageManager$Stub;
.super Landroid/os/Binder;
.source "IPackageManager.java"

# interfaces
.implements Landroid/content/pm/IPackageManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPackageManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPackageManager"

.field static final TRANSACTION_addPackageToPreferred:I = 0x36

.field static final TRANSACTION_addPermission:I = 0x11

.field static final TRANSACTION_addPermissionAsync:I = 0x53

.field static final TRANSACTION_addPreferredActivity:I = 0x39

.field static final TRANSACTION_canonicalToCurrentPackageNames:I = 0x5

.field static final TRANSACTION_checkManagedStateOfPermission:I = 0x15

.field static final TRANSACTION_checkPermission:I = 0xf

.field static final TRANSACTION_checkPermissionManaged:I = 0x13

.field static final TRANSACTION_checkSignatures:I = 0x1e

.field static final TRANSACTION_checkUidPermission:I = 0x10

.field static final TRANSACTION_checkUidSignatures:I = 0x1f

.field static final TRANSACTION_clearApplicationUserData:I = 0x45

.field static final TRANSACTION_clearPackagePreferredActivities:I = 0x3b

.field static final TRANSACTION_createUser:I = 0x56

.field static final TRANSACTION_currentToCanonicalPackageNames:I = 0x4

.field static final TRANSACTION_deleteApplicationCacheFiles:I = 0x44

.field static final TRANSACTION_deletePackage:I = 0x34

.field static final TRANSACTION_enablePackageManaged:I = 0x16

.field static final TRANSACTION_enterSafeMode:I = 0x4a

.field static final TRANSACTION_finishPackageInstall:I = 0x32

.field static final TRANSACTION_freeStorage:I = 0x43

.field static final TRANSACTION_freeStorageAndNotify:I = 0x42

.field static final TRANSACTION_getActivityInfo:I = 0xb

.field static final TRANSACTION_getAllPermissionGroups:I = 0x9

.field static final TRANSACTION_getApplicationEnabledSetting:I = 0x40

.field static final TRANSACTION_getApplicationInfo:I = 0xa

.field static final TRANSACTION_getComponentEnabledSetting:I = 0x3e

.field static final TRANSACTION_getInstallLocation:I = 0x55

.field static final TRANSACTION_getInstalledApplications:I = 0x2a

.field static final TRANSACTION_getInstalledPackages:I = 0x29

.field static final TRANSACTION_getInstalledStorageDirectory:I = 0x5e

.field static final TRANSACTION_getInstallerPackageName:I = 0x35

.field static final TRANSACTION_getInstrumentationInfo:I = 0x2f

.field static final TRANSACTION_getManagedPermissions:I = 0x1a

.field static final TRANSACTION_getNameForUid:I = 0x21

.field static final TRANSACTION_getPackageGids:I = 0x3

.field static final TRANSACTION_getPackageInfo:I = 0x1

.field static final TRANSACTION_getPackageSizeInfo:I = 0x46

.field static final TRANSACTION_getPackageUid:I = 0x2

.field static final TRANSACTION_getPackagesForUid:I = 0x20

.field static final TRANSACTION_getPermissionAlertDialogEnableType:I = 0x1c

.field static final TRANSACTION_getPermissionGroupInfo:I = 0x8

.field static final TRANSACTION_getPermissionInfo:I = 0x6

.field static final TRANSACTION_getPersistentApplications:I = 0x2b

.field static final TRANSACTION_getPreferredActivities:I = 0x3c

.field static final TRANSACTION_getPreferredPackages:I = 0x38

.field static final TRANSACTION_getProviderInfo:I = 0xe

.field static final TRANSACTION_getReceiverInfo:I = 0xc

.field static final TRANSACTION_getServiceInfo:I = 0xd

.field static final TRANSACTION_getSystemAvailableFeatures:I = 0x48

.field static final TRANSACTION_getSystemSharedLibraryNames:I = 0x47

.field static final TRANSACTION_getUidForSharedUser:I = 0x22

.field static final TRANSACTION_getVerifierDeviceIdentity:I = 0x5a

.field static final TRANSACTION_hasSystemFeature:I = 0x49

.field static final TRANSACTION_hasSystemUidErrors:I = 0x4d

.field static final TRANSACTION_installPackage:I = 0x31

.field static final TRANSACTION_installPackageWithVerification:I = 0x58

.field static final TRANSACTION_isFirstBoot:I = 0x5b

.field static final TRANSACTION_isFrameworkSupportPermissionManager:I = 0x18

.field static final TRANSACTION_isInstalledStorageMounted:I = 0x5d

.field static final TRANSACTION_isManagedPermissionAlertDialogEnabled:I = 0x19

.field static final TRANSACTION_isManagedPermissionEnabled:I = 0x17

.field static final TRANSACTION_isProtectedBroadcast:I = 0x1d

.field static final TRANSACTION_isSafeMode:I = 0x4b

.field static final TRANSACTION_movePackage:I = 0x52

.field static final TRANSACTION_nextPackageToClean:I = 0x51

.field static final TRANSACTION_performBootDexOpt:I = 0x4e

.field static final TRANSACTION_performDexOpt:I = 0x4f

.field static final TRANSACTION_queryContentProviders:I = 0x2e

.field static final TRANSACTION_queryInstrumentation:I = 0x30

.field static final TRANSACTION_queryIntentActivities:I = 0x24

.field static final TRANSACTION_queryIntentActivityOptions:I = 0x25

.field static final TRANSACTION_queryIntentReceivers:I = 0x26

.field static final TRANSACTION_queryIntentServices:I = 0x28

.field static final TRANSACTION_queryPermissionsByGroup:I = 0x7

.field static final TRANSACTION_querySyncProviders:I = 0x2d

.field static final TRANSACTION_removePackageFromPreferred:I = 0x37

.field static final TRANSACTION_removePermission:I = 0x12

.field static final TRANSACTION_removeUser:I = 0x57

.field static final TRANSACTION_replacePreferredActivity:I = 0x3a

.field static final TRANSACTION_resolveContentProvider:I = 0x2c

.field static final TRANSACTION_resolveIntent:I = 0x23

.field static final TRANSACTION_resolveService:I = 0x27

.field static final TRANSACTION_setApplicationEnabledSetting:I = 0x3f

.field static final TRANSACTION_setComponentEnabledSetting:I = 0x3d

.field static final TRANSACTION_setInstallLocation:I = 0x54

.field static final TRANSACTION_setInstallerPackageName:I = 0x33

.field static final TRANSACTION_setPackageStoppedState:I = 0x41

.field static final TRANSACTION_setPermissionAlertDialogEnableType:I = 0x1b

.field static final TRANSACTION_systemReady:I = 0x4c

.field static final TRANSACTION_updateExternalMediaStatus:I = 0x50

.field static final TRANSACTION_updateExternalPermissions:I = 0x5c

.field static final TRANSACTION_updateManagedPermissionOfPackage:I = 0x14

.field static final TRANSACTION_verifyPendingInstall:I = 0x59


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.content.pm.IPackageManager"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IPackageManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;
    .registers 3
    .parameter "obj"

    .prologue
    .line 29
    if-nez p0, :cond_4

    .line 30
    const/4 v0, 0x0

    .line 36
    :goto_3
    return-object v0

    .line 32
    :cond_4
    const-string v1, "android.content.pm.IPackageManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/content/pm/IPackageManager;

    if-eqz v1, :cond_13

    .line 34
    check-cast v0, Landroid/content/pm/IPackageManager;

    goto :goto_3

    .line 36
    :cond_13
    new-instance v0, Landroid/content/pm/IPackageManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 28
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
    .line 44
    sparse-switch p1, :sswitch_data_d98

    .line 1308
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_7
    return v2

    .line 48
    :sswitch_8
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    const/4 v2, 0x1

    goto :goto_7

    .line 53
    :sswitch_11
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 58
    .local v4, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15

    .line 59
    .local v15, _result:Landroid/content/pm/PackageInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    if-eqz v15, :cond_39

    .line 61
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v2}, Landroid/content/pm/PackageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 67
    :goto_37
    const/4 v2, 0x1

    goto :goto_7

    .line 65
    :cond_39
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_37

    .line 71
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:I
    .end local v15           #_result:Landroid/content/pm/PackageInfo;
    :sswitch_40
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 74
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->getPackageUid(Ljava/lang/String;)I

    move-result v15

    .line 75
    .local v15, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    const/4 v2, 0x1

    goto :goto_7

    .line 81
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v15           #_result:I
    :sswitch_5b
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 84
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->getPackageGids(Ljava/lang/String;)[I

    move-result-object v15

    .line 85
    .local v15, _result:[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 87
    const/4 v2, 0x1

    goto :goto_7

    .line 91
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v15           #_result:[I
    :sswitch_76
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, _arg0:[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 95
    .local v15, _result:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 97
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 101
    .end local v3           #_arg0:[Ljava/lang/String;
    .end local v15           #_result:[Ljava/lang/String;
    :sswitch_92
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 104
    .restart local v3       #_arg0:[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 105
    .restart local v15       #_result:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 107
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 111
    .end local v3           #_arg0:[Ljava/lang/String;
    .end local v15           #_result:[Ljava/lang/String;
    :sswitch_ae
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 116
    .restart local v4       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v15

    .line 117
    .local v15, _result:Landroid/content/pm/PermissionInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    if-eqz v15, :cond_d7

    .line 119
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v2}, Landroid/content/pm/PermissionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 125
    :goto_d4
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 123
    :cond_d7
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d4

    .line 129
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:I
    .end local v15           #_result:Landroid/content/pm/PermissionInfo;
    :sswitch_de
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 133
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 134
    .restart local v4       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v20

    .line 135
    .local v20, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 137
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 141
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:I
    .end local v20           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    :sswitch_100
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 145
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 146
    .restart local v4       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v15

    .line 147
    .local v15, _result:Landroid/content/pm/PermissionGroupInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    if-eqz v15, :cond_129

    .line 149
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v2}, Landroid/content/pm/PermissionGroupInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 155
    :goto_126
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 153
    :cond_129
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_126

    .line 159
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:I
    .end local v15           #_result:Landroid/content/pm/PermissionGroupInfo;
    :sswitch_130
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 162
    .local v3, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->getAllPermissionGroups(I)Ljava/util/List;

    move-result-object v19

    .line 163
    .local v19, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 165
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 169
    .end local v3           #_arg0:I
    .end local v19           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    :sswitch_14e
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 174
    .restart local v4       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    .line 175
    .local v15, _result:Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    if-eqz v15, :cond_177

    .line 177
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v2}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 183
    :goto_174
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 181
    :cond_177
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_174

    .line 187
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:I
    .end local v15           #_result:Landroid/content/pm/ApplicationInfo;
    :sswitch_17e
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1b3

    .line 190
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 196
    .local v3, _arg0:Landroid/content/ComponentName;
    :goto_195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 197
    .restart local v4       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v15

    .line 198
    .local v15, _result:Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    if-eqz v15, :cond_1b5

    .line 200
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v2}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 206
    :goto_1b0
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 193
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v15           #_result:Landroid/content/pm/ActivityInfo;
    :cond_1b3
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_195

    .line 204
    .restart local v4       #_arg1:I
    .restart local v15       #_result:Landroid/content/pm/ActivityInfo;
    :cond_1b5
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1b0

    .line 210
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v15           #_result:Landroid/content/pm/ActivityInfo;
    :sswitch_1bc
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1f1

    .line 213
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 219
    .restart local v3       #_arg0:Landroid/content/ComponentName;
    :goto_1d3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 220
    .restart local v4       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v15

    .line 221
    .restart local v15       #_result:Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    if-eqz v15, :cond_1f3

    .line 223
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v2}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 229
    :goto_1ee
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 216
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v15           #_result:Landroid/content/pm/ActivityInfo;
    :cond_1f1
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_1d3

    .line 227
    .restart local v4       #_arg1:I
    .restart local v15       #_result:Landroid/content/pm/ActivityInfo;
    :cond_1f3
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1ee

    .line 233
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v15           #_result:Landroid/content/pm/ActivityInfo;
    :sswitch_1fa
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_22f

    .line 236
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 242
    .restart local v3       #_arg0:Landroid/content/ComponentName;
    :goto_211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 243
    .restart local v4       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v15

    .line 244
    .local v15, _result:Landroid/content/pm/ServiceInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    if-eqz v15, :cond_231

    .line 246
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v2}, Landroid/content/pm/ServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 252
    :goto_22c
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 239
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v15           #_result:Landroid/content/pm/ServiceInfo;
    :cond_22f
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_211

    .line 250
    .restart local v4       #_arg1:I
    .restart local v15       #_result:Landroid/content/pm/ServiceInfo;
    :cond_231
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_22c

    .line 256
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v15           #_result:Landroid/content/pm/ServiceInfo;
    :sswitch_238
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_26d

    .line 259
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 265
    .restart local v3       #_arg0:Landroid/content/ComponentName;
    :goto_24f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 266
    .restart local v4       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    move-result-object v15

    .line 267
    .local v15, _result:Landroid/content/pm/ProviderInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    if-eqz v15, :cond_26f

    .line 269
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v2}, Landroid/content/pm/ProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 275
    :goto_26a
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 262
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v15           #_result:Landroid/content/pm/ProviderInfo;
    :cond_26d
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_24f

    .line 273
    .restart local v4       #_arg1:I
    .restart local v15       #_result:Landroid/content/pm/ProviderInfo;
    :cond_26f
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_26a

    .line 279
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v15           #_result:Landroid/content/pm/ProviderInfo;
    :sswitch_276
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 283
    .local v3, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 284
    .local v4, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 285
    .local v15, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 291
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v15           #_result:I
    :sswitch_296
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 295
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 296
    .local v4, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->checkUidPermission(Ljava/lang/String;I)I

    move-result v15

    .line 297
    .restart local v15       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 303
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:I
    .end local v15           #_result:I
    :sswitch_2b6
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2e1

    .line 306
    sget-object v2, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PermissionInfo;

    .line 311
    .local v3, _arg0:Landroid/content/pm/PermissionInfo;
    :goto_2cd
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->addPermission(Landroid/content/pm/PermissionInfo;)Z

    move-result v15

    .line 312
    .local v15, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    if-eqz v15, :cond_2e3

    const/4 v2, 0x1

    :goto_2d9
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 309
    .end local v3           #_arg0:Landroid/content/pm/PermissionInfo;
    .end local v15           #_result:Z
    :cond_2e1
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/pm/PermissionInfo;
    goto :goto_2cd

    .line 313
    .restart local v15       #_result:Z
    :cond_2e3
    const/4 v2, 0x0

    goto :goto_2d9

    .line 318
    .end local v3           #_arg0:Landroid/content/pm/PermissionInfo;
    .end local v15           #_result:Z
    :sswitch_2e5
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 321
    .local v3, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->removePermission(Ljava/lang/String;)V

    .line 322
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 327
    .end local v3           #_arg0:Ljava/lang/String;
    :sswitch_2fb
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 331
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 332
    .local v4, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->checkPermissionManaged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    .line 333
    .restart local v15       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    if-eqz v15, :cond_31e

    const/4 v2, 0x1

    :goto_316
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 334
    :cond_31e
    const/4 v2, 0x0

    goto :goto_316

    .line 339
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v15           #_result:Z
    :sswitch_320
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 343
    .local v3, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 345
    .local v4, _arg1:[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 346
    .local v5, _arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/pm/IPackageManager$Stub;->updateManagedPermissionOfPackage(I[Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 352
    .end local v3           #_arg0:I
    .end local v4           #_arg1:[Ljava/lang/String;
    .end local v5           #_arg2:Ljava/lang/String;
    :sswitch_33e
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 356
    .local v3, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 357
    .local v4, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->checkManagedStateOfPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 358
    .local v15, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 364
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v15           #_result:I
    :sswitch_35e
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_377

    const/4 v3, 0x1

    .line 367
    .local v3, _arg0:Z
    :goto_36c
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->enablePackageManaged(Z)V

    .line 368
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 366
    .end local v3           #_arg0:Z
    :cond_377
    const/4 v3, 0x0

    goto :goto_36c

    .line 373
    :sswitch_379
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isManagedPermissionEnabled()Z

    move-result v15

    .line 375
    .local v15, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    if-eqz v15, :cond_392

    const/4 v2, 0x1

    :goto_38a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 376
    :cond_392
    const/4 v2, 0x0

    goto :goto_38a

    .line 381
    .end local v15           #_result:Z
    :sswitch_394
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 382
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isFrameworkSupportPermissionManager()Z

    move-result v15

    .line 383
    .restart local v15       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    if-eqz v15, :cond_3ad

    const/4 v2, 0x1

    :goto_3a5
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 384
    :cond_3ad
    const/4 v2, 0x0

    goto :goto_3a5

    .line 389
    .end local v15           #_result:Z
    :sswitch_3af
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 392
    .local v3, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->isManagedPermissionAlertDialogEnabled(Ljava/lang/String;)Z

    move-result v15

    .line 393
    .restart local v15       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    if-eqz v15, :cond_3ce

    const/4 v2, 0x1

    :goto_3c6
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 394
    :cond_3ce
    const/4 v2, 0x0

    goto :goto_3c6

    .line 399
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v15           #_result:Z
    :sswitch_3d0
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 402
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->getManagedPermissions(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 403
    .local v15, _result:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 405
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 409
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v15           #_result:[Ljava/lang/String;
    :sswitch_3ec
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 412
    .local v3, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->setPermissionAlertDialogEnableType(I)V

    .line 413
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 418
    .end local v3           #_arg0:I
    :sswitch_402
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getPermissionAlertDialogEnableType()I

    move-result v15

    .line 420
    .local v15, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 422
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 426
    .end local v15           #_result:I
    :sswitch_418
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 429
    .local v3, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->isProtectedBroadcast(Ljava/lang/String;)Z

    move-result v15

    .line 430
    .local v15, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    if-eqz v15, :cond_437

    const/4 v2, 0x1

    :goto_42f
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 432
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 431
    :cond_437
    const/4 v2, 0x0

    goto :goto_42f

    .line 436
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v15           #_result:Z
    :sswitch_439
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 440
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 441
    .restart local v4       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 442
    .local v15, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 448
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v15           #_result:I
    :sswitch_459
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 452
    .local v3, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 453
    .local v4, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->checkUidSignatures(II)I

    move-result v15

    .line 454
    .restart local v15       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 456
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 460
    .end local v3           #_arg0:I
    .end local v4           #_arg1:I
    .end local v15           #_result:I
    :sswitch_479
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 462
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 463
    .restart local v3       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v15

    .line 464
    .local v15, _result:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 466
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 470
    .end local v3           #_arg0:I
    .end local v15           #_result:[Ljava/lang/String;
    :sswitch_495
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 473
    .restart local v3       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->getNameForUid(I)Ljava/lang/String;

    move-result-object v15

    .line 474
    .local v15, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 476
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 480
    .end local v3           #_arg0:I
    .end local v15           #_result:Ljava/lang/String;
    :sswitch_4b1
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 483
    .local v3, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->getUidForSharedUser(Ljava/lang/String;)I

    move-result v15

    .line 484
    .local v15, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 490
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v15           #_result:I
    :sswitch_4cd
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 492
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_506

    .line 493
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 499
    .local v3, _arg0:Landroid/content/Intent;
    :goto_4e4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 501
    .local v4, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 502
    .local v5, _arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/pm/IPackageManager$Stub;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v15

    .line 503
    .local v15, _result:Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    if-eqz v15, :cond_508

    .line 505
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 506
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 511
    :goto_503
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 496
    .end local v3           #_arg0:Landroid/content/Intent;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:I
    .end local v15           #_result:Landroid/content/pm/ResolveInfo;
    :cond_506
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/Intent;
    goto :goto_4e4

    .line 509
    .restart local v4       #_arg1:Ljava/lang/String;
    .restart local v5       #_arg2:I
    .restart local v15       #_result:Landroid/content/pm/ResolveInfo;
    :cond_508
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_503

    .line 515
    .end local v3           #_arg0:Landroid/content/Intent;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:I
    .end local v15           #_result:Landroid/content/pm/ResolveInfo;
    :sswitch_50f
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 517
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_541

    .line 518
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 524
    .restart local v3       #_arg0:Landroid/content/Intent;
    :goto_526
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 526
    .restart local v4       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 527
    .restart local v5       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/pm/IPackageManager$Stub;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v22

    .line 528
    .local v22, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 529
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 530
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 521
    .end local v3           #_arg0:Landroid/content/Intent;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:I
    .end local v22           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_541
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/Intent;
    goto :goto_526

    .line 534
    .end local v3           #_arg0:Landroid/content/Intent;
    :sswitch_543
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 536
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_593

    .line 537
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 543
    .local v3, _arg0:Landroid/content/ComponentName;
    :goto_55a
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/content/Intent;

    .line 545
    .local v4, _arg1:[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 547
    .local v5, _arg2:[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_595

    .line 548
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 554
    .local v6, _arg3:Landroid/content/Intent;
    :goto_578
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 556
    .local v7, _arg4:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, _arg5:I
    move-object/from16 v2, p0

    .line 557
    invoke-virtual/range {v2 .. v8}, Landroid/content/pm/IPackageManager$Stub;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;[Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v22

    .line 558
    .restart local v22       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 559
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 560
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 540
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:[Landroid/content/Intent;
    .end local v5           #_arg2:[Ljava/lang/String;
    .end local v6           #_arg3:Landroid/content/Intent;
    .end local v7           #_arg4:Ljava/lang/String;
    .end local v8           #_arg5:I
    .end local v22           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_593
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_55a

    .line 551
    .restart local v4       #_arg1:[Landroid/content/Intent;
    .restart local v5       #_arg2:[Ljava/lang/String;
    :cond_595
    const/4 v6, 0x0

    .restart local v6       #_arg3:Landroid/content/Intent;
    goto :goto_578

    .line 564
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:[Landroid/content/Intent;
    .end local v5           #_arg2:[Ljava/lang/String;
    .end local v6           #_arg3:Landroid/content/Intent;
    :sswitch_597
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 566
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5c9

    .line 567
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 573
    .local v3, _arg0:Landroid/content/Intent;
    :goto_5ae
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 575
    .local v4, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 576
    .local v5, _arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/pm/IPackageManager$Stub;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v22

    .line 577
    .restart local v22       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 579
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 570
    .end local v3           #_arg0:Landroid/content/Intent;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:I
    .end local v22           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_5c9
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/Intent;
    goto :goto_5ae

    .line 583
    .end local v3           #_arg0:Landroid/content/Intent;
    :sswitch_5cb
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 585
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_604

    .line 586
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 592
    .restart local v3       #_arg0:Landroid/content/Intent;
    :goto_5e2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 594
    .restart local v4       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 595
    .restart local v5       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/pm/IPackageManager$Stub;->resolveService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v15

    .line 596
    .restart local v15       #_result:Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    if-eqz v15, :cond_606

    .line 598
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 599
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 604
    :goto_601
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 589
    .end local v3           #_arg0:Landroid/content/Intent;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:I
    .end local v15           #_result:Landroid/content/pm/ResolveInfo;
    :cond_604
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/Intent;
    goto :goto_5e2

    .line 602
    .restart local v4       #_arg1:Ljava/lang/String;
    .restart local v5       #_arg2:I
    .restart local v15       #_result:Landroid/content/pm/ResolveInfo;
    :cond_606
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_601

    .line 608
    .end local v3           #_arg0:Landroid/content/Intent;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:I
    .end local v15           #_result:Landroid/content/pm/ResolveInfo;
    :sswitch_60d
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 610
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_63f

    .line 611
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 617
    .restart local v3       #_arg0:Landroid/content/Intent;
    :goto_624
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 619
    .restart local v4       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 620
    .restart local v5       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/pm/IPackageManager$Stub;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v22

    .line 621
    .restart local v22       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 622
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 623
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 614
    .end local v3           #_arg0:Landroid/content/Intent;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:I
    .end local v22           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_63f
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/Intent;
    goto :goto_624

    .line 627
    .end local v3           #_arg0:Landroid/content/Intent;
    :sswitch_641
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 629
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 631
    .local v3, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 632
    .restart local v4       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->getInstalledPackages(ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v15

    .line 633
    .local v15, _result:Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    if-eqz v15, :cond_66a

    .line 635
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 636
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 641
    :goto_667
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 639
    :cond_66a
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_667

    .line 645
    .end local v3           #_arg0:I
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v15           #_result:Landroid/content/pm/ParceledListSlice;
    :sswitch_671
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 647
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 649
    .restart local v3       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 650
    .restart local v4       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->getInstalledApplications(ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v15

    .line 651
    .restart local v15       #_result:Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 652
    if-eqz v15, :cond_69a

    .line 653
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 654
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 659
    :goto_697
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 657
    :cond_69a
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_697

    .line 663
    .end local v3           #_arg0:I
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v15           #_result:Landroid/content/pm/ParceledListSlice;
    :sswitch_6a1
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 665
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 666
    .restart local v3       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->getPersistentApplications(I)Ljava/util/List;

    move-result-object v16

    .line 667
    .local v16, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 668
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 669
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 673
    .end local v3           #_arg0:I
    .end local v16           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :sswitch_6bf
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 675
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 677
    .local v3, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 678
    .local v4, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v15

    .line 679
    .local v15, _result:Landroid/content/pm/ProviderInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 680
    if-eqz v15, :cond_6e8

    .line 681
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 682
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v2}, Landroid/content/pm/ProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 687
    :goto_6e5
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 685
    :cond_6e8
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6e5

    .line 691
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:I
    .end local v15           #_result:Landroid/content/pm/ProviderInfo;
    :sswitch_6ef
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 693
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v12

    .line 695
    .local v12, _arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v14

    .line 696
    .local v14, _arg1:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14}, Landroid/content/pm/IPackageManager$Stub;->querySyncProviders(Ljava/util/List;Ljava/util/List;)V

    .line 697
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 699
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 700
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 704
    .end local v12           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v14           #_arg1:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    :sswitch_717
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 706
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 708
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 710
    .restart local v4       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 711
    .restart local v5       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/pm/IPackageManager$Stub;->queryContentProviders(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v21

    .line 712
    .local v21, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 714
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 718
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:I
    .end local v21           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    :sswitch_73d
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 720
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_772

    .line 721
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 727
    .local v3, _arg0:Landroid/content/ComponentName;
    :goto_754
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 728
    .restart local v4       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object v15

    .line 729
    .local v15, _result:Landroid/content/pm/InstrumentationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    if-eqz v15, :cond_774

    .line 731
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 732
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v2}, Landroid/content/pm/InstrumentationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 737
    :goto_76f
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 724
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v15           #_result:Landroid/content/pm/InstrumentationInfo;
    :cond_772
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_754

    .line 735
    .restart local v4       #_arg1:I
    .restart local v15       #_result:Landroid/content/pm/InstrumentationInfo;
    :cond_774
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_76f

    .line 741
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v15           #_result:Landroid/content/pm/InstrumentationInfo;
    :sswitch_77b
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 743
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 745
    .local v3, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 746
    .restart local v4       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v17

    .line 747
    .local v17, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/InstrumentationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 748
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 749
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 753
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:I
    .end local v17           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/InstrumentationInfo;>;"
    :sswitch_79d
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 755
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7cf

    .line 756
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 762
    .local v3, _arg0:Landroid/net/Uri;
    :goto_7b4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageInstallObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallObserver;

    move-result-object v4

    .line 764
    .local v4, _arg1:Landroid/content/pm/IPackageInstallObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 766
    .restart local v5       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 767
    .local v6, _arg3:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 768
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 769
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 759
    .end local v3           #_arg0:Landroid/net/Uri;
    .end local v4           #_arg1:Landroid/content/pm/IPackageInstallObserver;
    .end local v5           #_arg2:I
    .end local v6           #_arg3:Ljava/lang/String;
    :cond_7cf
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/net/Uri;
    goto :goto_7b4

    .line 773
    .end local v3           #_arg0:Landroid/net/Uri;
    :sswitch_7d1
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 775
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 776
    .local v3, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->finishPackageInstall(I)V

    .line 777
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 778
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 782
    .end local v3           #_arg0:I
    :sswitch_7e7
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 784
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 786
    .local v3, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 787
    .local v4, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 789
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 793
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    :sswitch_801
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 795
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 797
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageDeleteObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver;

    move-result-object v4

    .line 799
    .local v4, _arg1:Landroid/content/pm/IPackageDeleteObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 800
    .restart local v5       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/pm/IPackageManager$Stub;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 801
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 802
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 806
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Landroid/content/pm/IPackageDeleteObserver;
    .end local v5           #_arg2:I
    :sswitch_823
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 808
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 809
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 810
    .local v15, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 811
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 812
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 816
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v15           #_result:Ljava/lang/String;
    :sswitch_83f
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 818
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 819
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->addPackageToPreferred(Ljava/lang/String;)V

    .line 820
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 821
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 825
    .end local v3           #_arg0:Ljava/lang/String;
    :sswitch_855
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 827
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 828
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->removePackageFromPreferred(Ljava/lang/String;)V

    .line 829
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 830
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 834
    .end local v3           #_arg0:Ljava/lang/String;
    :sswitch_86b
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 836
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 837
    .local v3, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->getPreferredPackages(I)Ljava/util/List;

    move-result-object v18

    .line 838
    .local v18, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 839
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 840
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 844
    .end local v3           #_arg0:I
    .end local v18           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :sswitch_889
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 846
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8c9

    .line 847
    sget-object v2, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter;

    .line 853
    .local v3, _arg0:Landroid/content/IntentFilter;
    :goto_8a0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 855
    .local v4, _arg1:I
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/content/ComponentName;

    .line 857
    .local v5, _arg2:[Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8cb

    .line 858
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 863
    .local v6, _arg3:Landroid/content/ComponentName;
    :goto_8be
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 864
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 865
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 850
    .end local v3           #_arg0:Landroid/content/IntentFilter;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:[Landroid/content/ComponentName;
    .end local v6           #_arg3:Landroid/content/ComponentName;
    :cond_8c9
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/IntentFilter;
    goto :goto_8a0

    .line 861
    .restart local v4       #_arg1:I
    .restart local v5       #_arg2:[Landroid/content/ComponentName;
    :cond_8cb
    const/4 v6, 0x0

    .restart local v6       #_arg3:Landroid/content/ComponentName;
    goto :goto_8be

    .line 869
    .end local v3           #_arg0:Landroid/content/IntentFilter;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:[Landroid/content/ComponentName;
    .end local v6           #_arg3:Landroid/content/ComponentName;
    :sswitch_8cd
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 871
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_90d

    .line 872
    sget-object v2, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter;

    .line 878
    .restart local v3       #_arg0:Landroid/content/IntentFilter;
    :goto_8e4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 880
    .restart local v4       #_arg1:I
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/content/ComponentName;

    .line 882
    .restart local v5       #_arg2:[Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_90f

    .line 883
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 888
    .restart local v6       #_arg3:Landroid/content/ComponentName;
    :goto_902
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 889
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 890
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 875
    .end local v3           #_arg0:Landroid/content/IntentFilter;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:[Landroid/content/ComponentName;
    .end local v6           #_arg3:Landroid/content/ComponentName;
    :cond_90d
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/IntentFilter;
    goto :goto_8e4

    .line 886
    .restart local v4       #_arg1:I
    .restart local v5       #_arg2:[Landroid/content/ComponentName;
    :cond_90f
    const/4 v6, 0x0

    .restart local v6       #_arg3:Landroid/content/ComponentName;
    goto :goto_902

    .line 894
    .end local v3           #_arg0:Landroid/content/IntentFilter;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:[Landroid/content/ComponentName;
    .end local v6           #_arg3:Landroid/content/ComponentName;
    :sswitch_911
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 896
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 897
    .local v3, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 898
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 899
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 903
    .end local v3           #_arg0:Ljava/lang/String;
    :sswitch_927
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 905
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 907
    .local v11, _arg0:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 909
    .local v13, _arg1:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 910
    .local v5, _arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13, v5}, Landroid/content/pm/IPackageManager$Stub;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    move-result v15

    .line 911
    .local v15, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 912
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 913
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 914
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 915
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 919
    .end local v5           #_arg2:Ljava/lang/String;
    .end local v11           #_arg0:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    .end local v13           #_arg1:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v15           #_result:I
    :sswitch_957
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 921
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_981

    .line 922
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 928
    .local v3, _arg0:Landroid/content/ComponentName;
    :goto_96e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 930
    .restart local v4       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 931
    .local v5, _arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/pm/IPackageManager$Stub;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 932
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 933
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 925
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:I
    :cond_981
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_96e

    .line 937
    .end local v3           #_arg0:Landroid/content/ComponentName;
    :sswitch_983
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 939
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9ab

    .line 940
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 945
    .restart local v3       #_arg0:Landroid/content/ComponentName;
    :goto_99a
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v15

    .line 946
    .restart local v15       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 947
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 948
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 943
    .end local v3           #_arg0:Landroid/content/ComponentName;
    .end local v15           #_result:I
    :cond_9ab
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/ComponentName;
    goto :goto_99a

    .line 952
    .end local v3           #_arg0:Landroid/content/ComponentName;
    :sswitch_9ad
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 954
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 956
    .local v3, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 958
    .restart local v4       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 959
    .restart local v5       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/pm/IPackageManager$Stub;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 960
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 961
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 965
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:I
    :sswitch_9cb
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 967
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 968
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v15

    .line 969
    .restart local v15       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 970
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 971
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 975
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v15           #_result:I
    :sswitch_9e7
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 977
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 979
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a04

    const/4 v4, 0x1

    .line 980
    .local v4, _arg1:Z
    :goto_9f9
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->setPackageStoppedState(Ljava/lang/String;Z)V

    .line 981
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 982
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 979
    .end local v4           #_arg1:Z
    :cond_a04
    const/4 v4, 0x0

    goto :goto_9f9

    .line 986
    .end local v3           #_arg0:Ljava/lang/String;
    :sswitch_a06
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 988
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 990
    .local v9, _arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v4

    .line 991
    .local v4, _arg1:Landroid/content/pm/IPackageDataObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10, v4}, Landroid/content/pm/IPackageManager$Stub;->freeStorageAndNotify(JLandroid/content/pm/IPackageDataObserver;)V

    .line 992
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 993
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 997
    .end local v4           #_arg1:Landroid/content/pm/IPackageDataObserver;
    .end local v9           #_arg0:J
    :sswitch_a24
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 999
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 1001
    .restart local v9       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a4a

    .line 1002
    sget-object v2, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/IntentSender;

    .line 1007
    .local v4, _arg1:Landroid/content/IntentSender;
    :goto_a3f
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10, v4}, Landroid/content/pm/IPackageManager$Stub;->freeStorage(JLandroid/content/IntentSender;)V

    .line 1008
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1009
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1005
    .end local v4           #_arg1:Landroid/content/IntentSender;
    :cond_a4a
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/content/IntentSender;
    goto :goto_a3f

    .line 1013
    .end local v4           #_arg1:Landroid/content/IntentSender;
    .end local v9           #_arg0:J
    :sswitch_a4c
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1015
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1017
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v4

    .line 1018
    .local v4, _arg1:Landroid/content/pm/IPackageDataObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 1019
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1020
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1024
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Landroid/content/pm/IPackageDataObserver;
    :sswitch_a6a
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1026
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1028
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v4

    .line 1029
    .restart local v4       #_arg1:Landroid/content/pm/IPackageDataObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 1030
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1031
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1035
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Landroid/content/pm/IPackageDataObserver;
    :sswitch_a88
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1037
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1039
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageStatsObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageStatsObserver;

    move-result-object v4

    .line 1040
    .local v4, _arg1:Landroid/content/pm/IPackageStatsObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 1041
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1042
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1046
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Landroid/content/pm/IPackageStatsObserver;
    :sswitch_aa6
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1047
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object v15

    .line 1048
    .local v15, _result:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1049
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1050
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1054
    .end local v15           #_result:[Ljava/lang/String;
    :sswitch_abc
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1055
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v15

    .line 1056
    .local v15, _result:[Landroid/content/pm/FeatureInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1057
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v15, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1058
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1062
    .end local v15           #_result:[Landroid/content/pm/FeatureInfo;
    :sswitch_ad3
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1064
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1065
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v15

    .line 1066
    .local v15, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1067
    if-eqz v15, :cond_af2

    const/4 v2, 0x1

    :goto_aea
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1068
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1067
    :cond_af2
    const/4 v2, 0x0

    goto :goto_aea

    .line 1072
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v15           #_result:Z
    :sswitch_af4
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1073
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->enterSafeMode()V

    .line 1074
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1075
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1079
    :sswitch_b04
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1080
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isSafeMode()Z

    move-result v15

    .line 1081
    .restart local v15       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1082
    if-eqz v15, :cond_b1d

    const/4 v2, 0x1

    :goto_b15
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1083
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1082
    :cond_b1d
    const/4 v2, 0x0

    goto :goto_b15

    .line 1087
    .end local v15           #_result:Z
    :sswitch_b1f
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1088
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->systemReady()V

    .line 1089
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1090
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1094
    :sswitch_b2f
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1095
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->hasSystemUidErrors()Z

    move-result v15

    .line 1096
    .restart local v15       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1097
    if-eqz v15, :cond_b48

    const/4 v2, 0x1

    :goto_b40
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1098
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1097
    :cond_b48
    const/4 v2, 0x0

    goto :goto_b40

    .line 1102
    .end local v15           #_result:Z
    :sswitch_b4a
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1103
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->performBootDexOpt()V

    .line 1104
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1105
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1109
    :sswitch_b5a
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1112
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->performDexOpt(Ljava/lang/String;)Z

    move-result v15

    .line 1113
    .restart local v15       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1114
    if-eqz v15, :cond_b79

    const/4 v2, 0x1

    :goto_b71
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1115
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1114
    :cond_b79
    const/4 v2, 0x0

    goto :goto_b71

    .line 1119
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v15           #_result:Z
    :sswitch_b7b
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b9b

    const/4 v3, 0x1

    .line 1123
    .local v3, _arg0:Z
    :goto_b89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b9d

    const/4 v4, 0x1

    .line 1124
    .local v4, _arg1:Z
    :goto_b90
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->updateExternalMediaStatus(ZZ)V

    .line 1125
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1126
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1121
    .end local v3           #_arg0:Z
    .end local v4           #_arg1:Z
    :cond_b9b
    const/4 v3, 0x0

    goto :goto_b89

    .line 1123
    .restart local v3       #_arg0:Z
    :cond_b9d
    const/4 v4, 0x0

    goto :goto_b90

    .line 1130
    .end local v3           #_arg0:Z
    :sswitch_b9f
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1133
    .local v3, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->nextPackageToClean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1134
    .local v15, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1135
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1136
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1140
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v15           #_result:Ljava/lang/String;
    :sswitch_bbb
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1144
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageMoveObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageMoveObserver;

    move-result-object v4

    .line 1146
    .local v4, _arg1:Landroid/content/pm/IPackageMoveObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1147
    .restart local v5       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/pm/IPackageManager$Stub;->movePackage(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;I)V

    .line 1148
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1149
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1153
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Landroid/content/pm/IPackageMoveObserver;
    .end local v5           #_arg2:I
    :sswitch_bdd
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c08

    .line 1156
    sget-object v2, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PermissionInfo;

    .line 1161
    .local v3, _arg0:Landroid/content/pm/PermissionInfo;
    :goto_bf4
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z

    move-result v15

    .line 1162
    .local v15, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1163
    if-eqz v15, :cond_c0a

    const/4 v2, 0x1

    :goto_c00
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1164
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1159
    .end local v3           #_arg0:Landroid/content/pm/PermissionInfo;
    .end local v15           #_result:Z
    :cond_c08
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/content/pm/PermissionInfo;
    goto :goto_bf4

    .line 1163
    .restart local v15       #_result:Z
    :cond_c0a
    const/4 v2, 0x0

    goto :goto_c00

    .line 1168
    .end local v3           #_arg0:Landroid/content/pm/PermissionInfo;
    .end local v15           #_result:Z
    :sswitch_c0c
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1171
    .local v3, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->setInstallLocation(I)Z

    move-result v15

    .line 1172
    .restart local v15       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1173
    if-eqz v15, :cond_c2b

    const/4 v2, 0x1

    :goto_c23
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1174
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1173
    :cond_c2b
    const/4 v2, 0x0

    goto :goto_c23

    .line 1178
    .end local v3           #_arg0:I
    .end local v15           #_result:Z
    :sswitch_c2d
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1179
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getInstallLocation()I

    move-result v15

    .line 1180
    .local v15, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1181
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 1182
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1186
    .end local v15           #_result:I
    :sswitch_c43
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1188
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1190
    .local v3, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1191
    .local v4, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v15

    .line 1192
    .local v15, _result:Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1193
    if-eqz v15, :cond_c6c

    .line 1194
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1195
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v2}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1200
    :goto_c69
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1198
    :cond_c6c
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c69

    .line 1204
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:I
    .end local v15           #_result:Landroid/content/pm/UserInfo;
    :sswitch_c73
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1207
    .local v3, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/pm/IPackageManager$Stub;->removeUser(I)Z

    move-result v15

    .line 1208
    .local v15, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1209
    if-eqz v15, :cond_c92

    const/4 v2, 0x1

    :goto_c8a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1210
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1209
    :cond_c92
    const/4 v2, 0x0

    goto :goto_c8a

    .line 1214
    .end local v3           #_arg0:I
    .end local v15           #_result:Z
    :sswitch_c94
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_ce6

    .line 1217
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 1223
    .local v3, _arg0:Landroid/net/Uri;
    :goto_cab
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageInstallObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallObserver;

    move-result-object v4

    .line 1225
    .local v4, _arg1:Landroid/content/pm/IPackageInstallObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1227
    .restart local v5       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1229
    .local v6, _arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_ce8

    .line 1230
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 1236
    .local v7, _arg4:Landroid/net/Uri;
    :goto_ccb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_cea

    .line 1237
    sget-object v2, Landroid/content/pm/ManifestDigest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ManifestDigest;

    .local v8, _arg5:Landroid/content/pm/ManifestDigest;
    :goto_cdb
    move-object/from16 v2, p0

    .line 1242
    invoke-virtual/range {v2 .. v8}, Landroid/content/pm/IPackageManager$Stub;->installPackageWithVerification(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/net/Uri;Landroid/content/pm/ManifestDigest;)V

    .line 1243
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1244
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1220
    .end local v3           #_arg0:Landroid/net/Uri;
    .end local v4           #_arg1:Landroid/content/pm/IPackageInstallObserver;
    .end local v5           #_arg2:I
    .end local v6           #_arg3:Ljava/lang/String;
    .end local v7           #_arg4:Landroid/net/Uri;
    .end local v8           #_arg5:Landroid/content/pm/ManifestDigest;
    :cond_ce6
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/net/Uri;
    goto :goto_cab

    .line 1233
    .restart local v4       #_arg1:Landroid/content/pm/IPackageInstallObserver;
    .restart local v5       #_arg2:I
    .restart local v6       #_arg3:Ljava/lang/String;
    :cond_ce8
    const/4 v7, 0x0

    .restart local v7       #_arg4:Landroid/net/Uri;
    goto :goto_ccb

    .line 1240
    :cond_cea
    const/4 v8, 0x0

    .restart local v8       #_arg5:Landroid/content/pm/ManifestDigest;
    goto :goto_cdb

    .line 1248
    .end local v3           #_arg0:Landroid/net/Uri;
    .end local v4           #_arg1:Landroid/content/pm/IPackageInstallObserver;
    .end local v5           #_arg2:I
    .end local v6           #_arg3:Ljava/lang/String;
    .end local v7           #_arg4:Landroid/net/Uri;
    .end local v8           #_arg5:Landroid/content/pm/ManifestDigest;
    :sswitch_cec
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1250
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1252
    .local v3, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1253
    .local v4, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->verifyPendingInstall(II)V

    .line 1254
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1255
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1259
    .end local v3           #_arg0:I
    .end local v4           #_arg1:I
    :sswitch_d06
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1260
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getVerifierDeviceIdentity()Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v15

    .line 1261
    .local v15, _result:Landroid/content/pm/VerifierDeviceIdentity;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1262
    if-eqz v15, :cond_d25

    .line 1263
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1264
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v2}, Landroid/content/pm/VerifierDeviceIdentity;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1269
    :goto_d22
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1267
    :cond_d25
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d22

    .line 1273
    .end local v15           #_result:Landroid/content/pm/VerifierDeviceIdentity;
    :sswitch_d2c
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1274
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isFirstBoot()Z

    move-result v15

    .line 1275
    .local v15, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1276
    if-eqz v15, :cond_d45

    const/4 v2, 0x1

    :goto_d3d
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1277
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1276
    :cond_d45
    const/4 v2, 0x0

    goto :goto_d3d

    .line 1281
    .end local v15           #_result:Z
    :sswitch_d47
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1283
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1285
    .local v3, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1286
    .local v4, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->updateExternalPermissions(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 1287
    .local v15, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1288
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 1289
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1293
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v15           #_result:I
    :sswitch_d67
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1294
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isInstalledStorageMounted()Z

    move-result v15

    .line 1295
    .local v15, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1296
    if-eqz v15, :cond_d80

    const/4 v2, 0x1

    :goto_d78
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1297
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 1296
    :cond_d80
    const/4 v2, 0x0

    goto :goto_d78

    .line 1301
    .end local v15           #_result:Z
    :sswitch_d82
    const-string v2, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1302
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getInstalledStorageDirectory()Ljava/lang/String;

    move-result-object v15

    .line 1303
    .local v15, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1304
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1305
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 44
    :sswitch_data_d98
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_40
        0x3 -> :sswitch_5b
        0x4 -> :sswitch_76
        0x5 -> :sswitch_92
        0x6 -> :sswitch_ae
        0x7 -> :sswitch_de
        0x8 -> :sswitch_100
        0x9 -> :sswitch_130
        0xa -> :sswitch_14e
        0xb -> :sswitch_17e
        0xc -> :sswitch_1bc
        0xd -> :sswitch_1fa
        0xe -> :sswitch_238
        0xf -> :sswitch_276
        0x10 -> :sswitch_296
        0x11 -> :sswitch_2b6
        0x12 -> :sswitch_2e5
        0x13 -> :sswitch_2fb
        0x14 -> :sswitch_320
        0x15 -> :sswitch_33e
        0x16 -> :sswitch_35e
        0x17 -> :sswitch_379
        0x18 -> :sswitch_394
        0x19 -> :sswitch_3af
        0x1a -> :sswitch_3d0
        0x1b -> :sswitch_3ec
        0x1c -> :sswitch_402
        0x1d -> :sswitch_418
        0x1e -> :sswitch_439
        0x1f -> :sswitch_459
        0x20 -> :sswitch_479
        0x21 -> :sswitch_495
        0x22 -> :sswitch_4b1
        0x23 -> :sswitch_4cd
        0x24 -> :sswitch_50f
        0x25 -> :sswitch_543
        0x26 -> :sswitch_597
        0x27 -> :sswitch_5cb
        0x28 -> :sswitch_60d
        0x29 -> :sswitch_641
        0x2a -> :sswitch_671
        0x2b -> :sswitch_6a1
        0x2c -> :sswitch_6bf
        0x2d -> :sswitch_6ef
        0x2e -> :sswitch_717
        0x2f -> :sswitch_73d
        0x30 -> :sswitch_77b
        0x31 -> :sswitch_79d
        0x32 -> :sswitch_7d1
        0x33 -> :sswitch_7e7
        0x34 -> :sswitch_801
        0x35 -> :sswitch_823
        0x36 -> :sswitch_83f
        0x37 -> :sswitch_855
        0x38 -> :sswitch_86b
        0x39 -> :sswitch_889
        0x3a -> :sswitch_8cd
        0x3b -> :sswitch_911
        0x3c -> :sswitch_927
        0x3d -> :sswitch_957
        0x3e -> :sswitch_983
        0x3f -> :sswitch_9ad
        0x40 -> :sswitch_9cb
        0x41 -> :sswitch_9e7
        0x42 -> :sswitch_a06
        0x43 -> :sswitch_a24
        0x44 -> :sswitch_a4c
        0x45 -> :sswitch_a6a
        0x46 -> :sswitch_a88
        0x47 -> :sswitch_aa6
        0x48 -> :sswitch_abc
        0x49 -> :sswitch_ad3
        0x4a -> :sswitch_af4
        0x4b -> :sswitch_b04
        0x4c -> :sswitch_b1f
        0x4d -> :sswitch_b2f
        0x4e -> :sswitch_b4a
        0x4f -> :sswitch_b5a
        0x50 -> :sswitch_b7b
        0x51 -> :sswitch_b9f
        0x52 -> :sswitch_bbb
        0x53 -> :sswitch_bdd
        0x54 -> :sswitch_c0c
        0x55 -> :sswitch_c2d
        0x56 -> :sswitch_c43
        0x57 -> :sswitch_c73
        0x58 -> :sswitch_c94
        0x59 -> :sswitch_cec
        0x5a -> :sswitch_d06
        0x5b -> :sswitch_d2c
        0x5c -> :sswitch_d47
        0x5d -> :sswitch_d67
        0x5e -> :sswitch_d82
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
