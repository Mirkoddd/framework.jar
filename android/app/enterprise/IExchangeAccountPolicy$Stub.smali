.class public abstract Landroid/app/enterprise/IExchangeAccountPolicy$Stub;
.super Landroid/os/Binder;
.source "IExchangeAccountPolicy.java"

# interfaces
.implements Landroid/app/enterprise/IExchangeAccountPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/IExchangeAccountPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/IExchangeAccountPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.IExchangeAccountPolicy"

.field static final TRANSACTION_addNewAccount:I = 0x2

.field static final TRANSACTION_addNewAccount_ex:I = 0x3

.field static final TRANSACTION_createAccount:I = 0x1

.field static final TRANSACTION_deleteAccount:I = 0x14

.field static final TRANSACTION_getAccountDetails:I = 0x13

.field static final TRANSACTION_getAccountId:I = 0x12

.field static final TRANSACTION_getAllEASAccounts:I = 0x19

.field static final TRANSACTION_getDeviceId:I = 0x1a

.field static final TRANSACTION_sendAccountsChangedBroadcast:I = 0x15

.field static final TRANSACTION_setAcceptAllCertificates:I = 0x6

.field static final TRANSACTION_setAccountBaseParameters:I = 0x4

.field static final TRANSACTION_setAccountName:I = 0x11

.field static final TRANSACTION_setAlwaysVibrateOnEmailNotification:I = 0x7

.field static final TRANSACTION_setAsDefaultAccount:I = 0x10

.field static final TRANSACTION_setClientAuthCert:I = 0xc

.field static final TRANSACTION_setDataSyncs:I = 0x18

.field static final TRANSACTION_setPassword:I = 0x9

.field static final TRANSACTION_setPastDaysToSync:I = 0xd

.field static final TRANSACTION_setProtocolVersion:I = 0xa

.field static final TRANSACTION_setSSL:I = 0x5

.field static final TRANSACTION_setSenderName:I = 0xf

.field static final TRANSACTION_setSignature:I = 0xb

.field static final TRANSACTION_setSilentVibrateOnEmailNotification:I = 0x8

.field static final TRANSACTION_setSyncInterval:I = 0xe

.field static final TRANSACTION_setSyncPeakTimings:I = 0x16

.field static final TRANSACTION_setSyncSchedules:I = 0x17


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.app.enterprise.IExchangeAccountPolicy"

    invoke-virtual {p0, p0, v0}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IExchangeAccountPolicy;
    .registers 3
    .parameter "obj"

    .prologue
    .line 27
    if-nez p0, :cond_4

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_3
    return-object v0

    .line 30
    :cond_4
    const-string v1, "android.app.enterprise.IExchangeAccountPolicy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_13

    .line 32
    check-cast v0, Landroid/app/enterprise/IExchangeAccountPolicy;

    goto :goto_3

    .line 34
    :cond_13
    new-instance v0, Landroid/app/enterprise/IExchangeAccountPolicy$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 60
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
    .line 42
    sparse-switch p1, :sswitch_data_52a

    .line 466
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_7
    return v3

    .line 46
    :sswitch_8
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v3, 0x1

    goto :goto_7

    .line 51
    :sswitch_11
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 55
    .local v4, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 57
    .local v5, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 59
    .local v6, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 61
    .local v7, _arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, _arg4:Ljava/lang/String;
    move-object/from16 v3, p0

    .line 62
    invoke-virtual/range {v3 .. v8}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->createAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v53

    .line 63
    .local v53, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    move-object/from16 v0, p3

    move-wide/from16 v1, v53

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 65
    const/4 v3, 0x1

    goto :goto_7

    .line 69
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v7           #_arg3:Ljava/lang/String;
    .end local v8           #_arg4:Ljava/lang/String;
    .end local v53           #_result:J
    :sswitch_3e
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 73
    .restart local v4       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 75
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 77
    .restart local v6       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 79
    .restart local v7       #_arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 81
    .local v8, _arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 83
    .local v9, _arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b5

    const/4 v10, 0x1

    .line 85
    .local v10, _arg6:Z
    :goto_64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 87
    .local v11, _arg7:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 89
    .local v12, _arg8:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 91
    .local v13, _arg9:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b7

    const/4 v14, 0x1

    .line 93
    .local v14, _arg10:Z
    :goto_77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b9

    const/4 v15, 0x1

    .line 95
    .local v15, _arg11:Z
    :goto_7e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 97
    .local v16, _arg12:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_bb

    const/16 v17, 0x1

    .line 99
    .local v17, _arg13:Z
    :goto_8a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_be

    const/16 v18, 0x1

    .line 101
    .local v18, _arg14:Z
    :goto_92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c1

    const/16 v19, 0x1

    .line 103
    .local v19, _arg15:Z
    :goto_9a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 105
    .local v20, _arg16:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .local v21, _arg17:Ljava/lang/String;
    move-object/from16 v3, p0

    .line 106
    invoke-virtual/range {v3 .. v21}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->addNewAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v53

    .line 107
    .restart local v53       #_result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    move-object/from16 v0, p3

    move-wide/from16 v1, v53

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 109
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 83
    .end local v10           #_arg6:Z
    .end local v11           #_arg7:Ljava/lang/String;
    .end local v12           #_arg8:Ljava/lang/String;
    .end local v13           #_arg9:Ljava/lang/String;
    .end local v14           #_arg10:Z
    .end local v15           #_arg11:Z
    .end local v16           #_arg12:Ljava/lang/String;
    .end local v17           #_arg13:Z
    .end local v18           #_arg14:Z
    .end local v19           #_arg15:Z
    .end local v20           #_arg16:Ljava/lang/String;
    .end local v21           #_arg17:Ljava/lang/String;
    .end local v53           #_result:J
    :cond_b5
    const/4 v10, 0x0

    goto :goto_64

    .line 91
    .restart local v10       #_arg6:Z
    .restart local v11       #_arg7:Ljava/lang/String;
    .restart local v12       #_arg8:Ljava/lang/String;
    .restart local v13       #_arg9:Ljava/lang/String;
    :cond_b7
    const/4 v14, 0x0

    goto :goto_77

    .line 93
    .restart local v14       #_arg10:Z
    :cond_b9
    const/4 v15, 0x0

    goto :goto_7e

    .line 97
    .restart local v15       #_arg11:Z
    .restart local v16       #_arg12:Ljava/lang/String;
    :cond_bb
    const/16 v17, 0x0

    goto :goto_8a

    .line 99
    .restart local v17       #_arg13:Z
    :cond_be
    const/16 v18, 0x0

    goto :goto_92

    .line 101
    .restart local v18       #_arg14:Z
    :cond_c1
    const/16 v19, 0x0

    goto :goto_9a

    .line 113
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v7           #_arg3:Ljava/lang/String;
    .end local v8           #_arg4:I
    .end local v9           #_arg5:I
    .end local v10           #_arg6:Z
    .end local v11           #_arg7:Ljava/lang/String;
    .end local v12           #_arg8:Ljava/lang/String;
    .end local v13           #_arg9:Ljava/lang/String;
    .end local v14           #_arg10:Z
    .end local v15           #_arg11:Z
    .end local v16           #_arg12:Ljava/lang/String;
    .end local v17           #_arg13:Z
    .end local v18           #_arg14:Z
    :sswitch_c4
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 117
    .restart local v4       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 119
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 121
    .restart local v6       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 123
    .restart local v7       #_arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 125
    .restart local v8       #_arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 127
    .restart local v9       #_arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_16f

    const/4 v10, 0x1

    .line 129
    .restart local v10       #_arg6:Z
    :goto_ea
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 131
    .restart local v11       #_arg7:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 133
    .restart local v12       #_arg8:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 135
    .restart local v13       #_arg9:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_172

    const/4 v14, 0x1

    .line 137
    .restart local v14       #_arg10:Z
    :goto_fd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_174

    const/4 v15, 0x1

    .line 139
    .restart local v15       #_arg11:Z
    :goto_104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 141
    .restart local v16       #_arg12:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_176

    const/16 v17, 0x1

    .line 143
    .restart local v17       #_arg13:Z
    :goto_110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_179

    const/16 v18, 0x1

    .line 145
    .restart local v18       #_arg14:Z
    :goto_118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_17c

    const/16 v19, 0x1

    .line 147
    .restart local v19       #_arg15:Z
    :goto_120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 149
    .restart local v20       #_arg16:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 151
    .restart local v21       #_arg17:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 153
    .local v22, _arg18:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 155
    .local v23, _arg19:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 157
    .local v24, _arg20:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 159
    .local v25, _arg21:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 161
    .local v26, _arg22:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 163
    .local v27, _arg23:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .line 165
    .local v28, _arg24:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_17f

    const/16 v29, 0x1

    .line 167
    .local v29, _arg25:Z
    :goto_14c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    .line 169
    .local v30, _arg26:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 171
    .local v31, _arg27:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v32

    .line 173
    .local v32, _arg28:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .local v33, _arg29:Ljava/lang/String;
    move-object/from16 v3, p0

    .line 174
    invoke-virtual/range {v3 .. v33}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->addNewAccount_ex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;IIIIIIIZII[BLjava/lang/String;)J

    move-result-wide v53

    .line 175
    .restart local v53       #_result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    move-object/from16 v0, p3

    move-wide/from16 v1, v53

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 177
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 127
    .end local v10           #_arg6:Z
    .end local v11           #_arg7:Ljava/lang/String;
    .end local v12           #_arg8:Ljava/lang/String;
    .end local v13           #_arg9:Ljava/lang/String;
    .end local v14           #_arg10:Z
    .end local v15           #_arg11:Z
    .end local v16           #_arg12:Ljava/lang/String;
    .end local v17           #_arg13:Z
    .end local v18           #_arg14:Z
    .end local v19           #_arg15:Z
    .end local v20           #_arg16:Ljava/lang/String;
    .end local v21           #_arg17:Ljava/lang/String;
    .end local v22           #_arg18:I
    .end local v23           #_arg19:I
    .end local v24           #_arg20:I
    .end local v25           #_arg21:I
    .end local v26           #_arg22:I
    .end local v27           #_arg23:I
    .end local v28           #_arg24:I
    .end local v29           #_arg25:Z
    .end local v30           #_arg26:I
    .end local v31           #_arg27:I
    .end local v32           #_arg28:[B
    .end local v33           #_arg29:Ljava/lang/String;
    .end local v53           #_result:J
    :cond_16f
    const/4 v10, 0x0

    goto/16 :goto_ea

    .line 135
    .restart local v10       #_arg6:Z
    .restart local v11       #_arg7:Ljava/lang/String;
    .restart local v12       #_arg8:Ljava/lang/String;
    .restart local v13       #_arg9:Ljava/lang/String;
    :cond_172
    const/4 v14, 0x0

    goto :goto_fd

    .line 137
    .restart local v14       #_arg10:Z
    :cond_174
    const/4 v15, 0x0

    goto :goto_104

    .line 141
    .restart local v15       #_arg11:Z
    .restart local v16       #_arg12:Ljava/lang/String;
    :cond_176
    const/16 v17, 0x0

    goto :goto_110

    .line 143
    .restart local v17       #_arg13:Z
    :cond_179
    const/16 v18, 0x0

    goto :goto_118

    .line 145
    .restart local v18       #_arg14:Z
    :cond_17c
    const/16 v19, 0x0

    goto :goto_120

    .line 165
    .restart local v19       #_arg15:Z
    .restart local v20       #_arg16:Ljava/lang/String;
    .restart local v21       #_arg17:Ljava/lang/String;
    .restart local v22       #_arg18:I
    .restart local v23       #_arg19:I
    .restart local v24       #_arg20:I
    .restart local v25       #_arg21:I
    .restart local v26       #_arg22:I
    .restart local v27       #_arg23:I
    .restart local v28       #_arg24:I
    :cond_17f
    const/16 v29, 0x0

    goto :goto_14c

    .line 181
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v7           #_arg3:Ljava/lang/String;
    .end local v8           #_arg4:I
    .end local v9           #_arg5:I
    .end local v10           #_arg6:Z
    .end local v11           #_arg7:Ljava/lang/String;
    .end local v12           #_arg8:Ljava/lang/String;
    .end local v13           #_arg9:Ljava/lang/String;
    .end local v14           #_arg10:Z
    .end local v15           #_arg11:Z
    .end local v16           #_arg12:Ljava/lang/String;
    .end local v17           #_arg13:Z
    .end local v18           #_arg14:Z
    .end local v19           #_arg15:Z
    .end local v20           #_arg16:Ljava/lang/String;
    .end local v21           #_arg17:Ljava/lang/String;
    .end local v22           #_arg18:I
    .end local v23           #_arg19:I
    .end local v24           #_arg20:I
    .end local v25           #_arg21:I
    .end local v26           #_arg22:I
    .end local v27           #_arg23:I
    .end local v28           #_arg24:I
    :sswitch_182
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 185
    .restart local v4       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 187
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 189
    .restart local v6       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 191
    .restart local v7       #_arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v39

    .local v39, _arg4:J
    move-object/from16 v34, p0

    move-object/from16 v35, v4

    move-object/from16 v36, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    .line 192
    invoke-virtual/range {v34 .. v40}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setAccountBaseParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v53

    .line 193
    .restart local v53       #_result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    move-object/from16 v0, p3

    move-wide/from16 v1, v53

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 195
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 199
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v7           #_arg3:Ljava/lang/String;
    .end local v39           #_arg4:J
    .end local v53           #_result:J
    :sswitch_1b8
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1e0

    const/4 v4, 0x1

    .line 203
    .local v4, _arg0:Z
    :goto_1c6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v49

    .line 204
    .local v49, _arg1:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v49

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setSSL(ZJ)Z

    move-result v53

    .line 205
    .local v53, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    if-eqz v53, :cond_1e2

    const/4 v3, 0x1

    :goto_1d8
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 201
    .end local v4           #_arg0:Z
    .end local v49           #_arg1:J
    .end local v53           #_result:Z
    :cond_1e0
    const/4 v4, 0x0

    goto :goto_1c6

    .line 206
    .restart local v4       #_arg0:Z
    .restart local v49       #_arg1:J
    .restart local v53       #_result:Z
    :cond_1e2
    const/4 v3, 0x0

    goto :goto_1d8

    .line 211
    .end local v4           #_arg0:Z
    .end local v49           #_arg1:J
    .end local v53           #_result:Z
    :sswitch_1e4
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_20c

    const/4 v4, 0x1

    .line 215
    .restart local v4       #_arg0:Z
    :goto_1f2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v49

    .line 216
    .restart local v49       #_arg1:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v49

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setAcceptAllCertificates(ZJ)Z

    move-result v53

    .line 217
    .restart local v53       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    if-eqz v53, :cond_20e

    const/4 v3, 0x1

    :goto_204
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 213
    .end local v4           #_arg0:Z
    .end local v49           #_arg1:J
    .end local v53           #_result:Z
    :cond_20c
    const/4 v4, 0x0

    goto :goto_1f2

    .line 218
    .restart local v4       #_arg0:Z
    .restart local v49       #_arg1:J
    .restart local v53       #_result:Z
    :cond_20e
    const/4 v3, 0x0

    goto :goto_204

    .line 223
    .end local v4           #_arg0:Z
    .end local v49           #_arg1:J
    .end local v53           #_result:Z
    :sswitch_210
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_238

    const/4 v4, 0x1

    .line 227
    .restart local v4       #_arg0:Z
    :goto_21e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v49

    .line 228
    .restart local v49       #_arg1:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v49

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setAlwaysVibrateOnEmailNotification(ZJ)Z

    move-result v53

    .line 229
    .restart local v53       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    if-eqz v53, :cond_23a

    const/4 v3, 0x1

    :goto_230
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 225
    .end local v4           #_arg0:Z
    .end local v49           #_arg1:J
    .end local v53           #_result:Z
    :cond_238
    const/4 v4, 0x0

    goto :goto_21e

    .line 230
    .restart local v4       #_arg0:Z
    .restart local v49       #_arg1:J
    .restart local v53       #_result:Z
    :cond_23a
    const/4 v3, 0x0

    goto :goto_230

    .line 235
    .end local v4           #_arg0:Z
    .end local v49           #_arg1:J
    .end local v53           #_result:Z
    :sswitch_23c
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_264

    const/4 v4, 0x1

    .line 239
    .restart local v4       #_arg0:Z
    :goto_24a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v49

    .line 240
    .restart local v49       #_arg1:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v49

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setSilentVibrateOnEmailNotification(ZJ)Z

    move-result v53

    .line 241
    .restart local v53       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    if-eqz v53, :cond_266

    const/4 v3, 0x1

    :goto_25c
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 237
    .end local v4           #_arg0:Z
    .end local v49           #_arg1:J
    .end local v53           #_result:Z
    :cond_264
    const/4 v4, 0x0

    goto :goto_24a

    .line 242
    .restart local v4       #_arg0:Z
    .restart local v49       #_arg1:J
    .restart local v53       #_result:Z
    :cond_266
    const/4 v3, 0x0

    goto :goto_25c

    .line 247
    .end local v4           #_arg0:Z
    .end local v49           #_arg1:J
    .end local v53           #_result:Z
    :sswitch_268
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 251
    .local v4, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v49

    .line 252
    .restart local v49       #_arg1:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v49

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setPassword(Ljava/lang/String;J)Z

    move-result v53

    .line 253
    .restart local v53       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    if-eqz v53, :cond_28d

    const/4 v3, 0x1

    :goto_285
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 254
    :cond_28d
    const/4 v3, 0x0

    goto :goto_285

    .line 259
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v49           #_arg1:J
    .end local v53           #_result:Z
    :sswitch_28f
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 263
    .restart local v4       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v49

    .line 264
    .restart local v49       #_arg1:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v49

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setProtocolVersion(Ljava/lang/String;J)Z

    move-result v53

    .line 265
    .restart local v53       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    if-eqz v53, :cond_2b4

    const/4 v3, 0x1

    :goto_2ac
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 266
    :cond_2b4
    const/4 v3, 0x0

    goto :goto_2ac

    .line 271
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v49           #_arg1:J
    .end local v53           #_result:Z
    :sswitch_2b6
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 275
    .restart local v4       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v49

    .line 276
    .restart local v49       #_arg1:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v49

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setSignature(Ljava/lang/String;J)Z

    move-result v53

    .line 277
    .restart local v53       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    if-eqz v53, :cond_2db

    const/4 v3, 0x1

    :goto_2d3
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 278
    :cond_2db
    const/4 v3, 0x0

    goto :goto_2d3

    .line 283
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v49           #_arg1:J
    .end local v53           #_result:Z
    :sswitch_2dd
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 287
    .local v4, _arg0:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 289
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v51

    .line 290
    .local v51, _arg2:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v51

    invoke-virtual {v0, v4, v5, v1, v2}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setClientAuthCert([BLjava/lang/String;J)V

    .line 291
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 296
    .end local v4           #_arg0:[B
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v51           #_arg2:J
    :sswitch_2fd
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 300
    .local v4, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v49

    .line 301
    .restart local v49       #_arg1:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v49

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setPastDaysToSync(IJ)Z

    move-result v53

    .line 302
    .restart local v53       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    if-eqz v53, :cond_322

    const/4 v3, 0x1

    :goto_31a
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 303
    :cond_322
    const/4 v3, 0x0

    goto :goto_31a

    .line 308
    .end local v4           #_arg0:I
    .end local v49           #_arg1:J
    .end local v53           #_result:Z
    :sswitch_324
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 312
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v49

    .line 313
    .restart local v49       #_arg1:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v49

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setSyncInterval(IJ)Z

    move-result v53

    .line 314
    .restart local v53       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    if-eqz v53, :cond_349

    const/4 v3, 0x1

    :goto_341
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 315
    :cond_349
    const/4 v3, 0x0

    goto :goto_341

    .line 320
    .end local v4           #_arg0:I
    .end local v49           #_arg1:J
    .end local v53           #_result:Z
    :sswitch_34b
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 324
    .local v4, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v49

    .line 325
    .restart local v49       #_arg1:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v49

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setSenderName(Ljava/lang/String;J)Z

    move-result v53

    .line 326
    .restart local v53       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    if-eqz v53, :cond_370

    const/4 v3, 0x1

    :goto_368
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 327
    :cond_370
    const/4 v3, 0x0

    goto :goto_368

    .line 332
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v49           #_arg1:J
    .end local v53           #_result:Z
    :sswitch_372
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v47

    .line 335
    .local v47, _arg0:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v47

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setAsDefaultAccount(J)Z

    move-result v53

    .line 336
    .restart local v53       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    if-eqz v53, :cond_393

    const/4 v3, 0x1

    :goto_38b
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 337
    :cond_393
    const/4 v3, 0x0

    goto :goto_38b

    .line 342
    .end local v47           #_arg0:J
    .end local v53           #_result:Z
    :sswitch_395
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 346
    .restart local v4       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v49

    .line 347
    .restart local v49       #_arg1:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v49

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setAccountName(Ljava/lang/String;J)Z

    move-result v53

    .line 348
    .restart local v53       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    if-eqz v53, :cond_3ba

    const/4 v3, 0x1

    :goto_3b2
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 349
    :cond_3ba
    const/4 v3, 0x0

    goto :goto_3b2

    .line 354
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v49           #_arg1:J
    .end local v53           #_result:Z
    :sswitch_3bc
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 358
    .restart local v4       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 360
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 361
    .restart local v6       #_arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->getAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v53

    .line 362
    .local v53, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    move-object/from16 v0, p3

    move-wide/from16 v1, v53

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 364
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 368
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v53           #_result:J
    :sswitch_3e2
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v47

    .line 371
    .restart local v47       #_arg0:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v47

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->getAccountDetails(J)Landroid/app/enterprise/Account;

    move-result-object v53

    .line 372
    .local v53, _result:Landroid/app/enterprise/Account;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    if-eqz v53, :cond_40b

    .line 374
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    const/4 v3, 0x1

    move-object/from16 v0, v53

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/app/enterprise/Account;->writeToParcel(Landroid/os/Parcel;I)V

    .line 380
    :goto_408
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 378
    :cond_40b
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_408

    .line 384
    .end local v47           #_arg0:J
    .end local v53           #_result:Landroid/app/enterprise/Account;
    :sswitch_412
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v47

    .line 387
    .restart local v47       #_arg0:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v47

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->deleteAccount(J)Z

    move-result v53

    .line 388
    .local v53, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    if-eqz v53, :cond_433

    const/4 v3, 0x1

    :goto_42b
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 389
    :cond_433
    const/4 v3, 0x0

    goto :goto_42b

    .line 394
    .end local v47           #_arg0:J
    .end local v53           #_result:Z
    :sswitch_435
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual/range {p0 .. p0}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->sendAccountsChangedBroadcast()V

    .line 396
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 401
    :sswitch_445
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 405
    .local v4, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 407
    .local v5, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 409
    .local v6, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v45

    .local v45, _arg3:J
    move-object/from16 v41, p0

    move/from16 v42, v4

    move/from16 v43, v5

    move/from16 v44, v6

    .line 410
    invoke-virtual/range {v41 .. v46}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setSyncPeakTimings(IIIJ)Z

    move-result v53

    .line 411
    .restart local v53       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    if-eqz v53, :cond_476

    const/4 v3, 0x1

    :goto_46e
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 413
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 412
    :cond_476
    const/4 v3, 0x0

    goto :goto_46e

    .line 417
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    .end local v6           #_arg2:I
    .end local v45           #_arg3:J
    .end local v53           #_result:Z
    :sswitch_478
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 421
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 423
    .restart local v5       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 425
    .restart local v6       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v45

    .restart local v45       #_arg3:J
    move-object/from16 v41, p0

    move/from16 v42, v4

    move/from16 v43, v5

    move/from16 v44, v6

    .line 426
    invoke-virtual/range {v41 .. v46}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setSyncSchedules(IIIJ)Z

    move-result v53

    .line 427
    .restart local v53       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    if-eqz v53, :cond_4a9

    const/4 v3, 0x1

    :goto_4a1
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 429
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 428
    :cond_4a9
    const/4 v3, 0x0

    goto :goto_4a1

    .line 433
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    .end local v6           #_arg2:I
    .end local v45           #_arg3:J
    .end local v53           #_result:Z
    :sswitch_4ab
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4ee

    const/4 v4, 0x1

    .line 437
    .local v4, _arg0:Z
    :goto_4b9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4f0

    const/4 v5, 0x1

    .line 439
    .local v5, _arg1:Z
    :goto_4c0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4f2

    const/4 v6, 0x1

    .line 441
    .local v6, _arg2:Z
    :goto_4c7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4f4

    const/4 v7, 0x1

    .line 443
    .local v7, _arg3:Z
    :goto_4ce
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v39

    .restart local v39       #_arg4:J
    move-object/from16 v34, p0

    move/from16 v35, v4

    move/from16 v36, v5

    move/from16 v37, v6

    move/from16 v38, v7

    .line 444
    invoke-virtual/range {v34 .. v40}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setDataSyncs(ZZZZJ)Z

    move-result v53

    .line 445
    .restart local v53       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    if-eqz v53, :cond_4f6

    const/4 v3, 0x1

    :goto_4e6
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 435
    .end local v4           #_arg0:Z
    .end local v5           #_arg1:Z
    .end local v6           #_arg2:Z
    .end local v7           #_arg3:Z
    .end local v39           #_arg4:J
    .end local v53           #_result:Z
    :cond_4ee
    const/4 v4, 0x0

    goto :goto_4b9

    .line 437
    .restart local v4       #_arg0:Z
    :cond_4f0
    const/4 v5, 0x0

    goto :goto_4c0

    .line 439
    .restart local v5       #_arg1:Z
    :cond_4f2
    const/4 v6, 0x0

    goto :goto_4c7

    .line 441
    .restart local v6       #_arg2:Z
    :cond_4f4
    const/4 v7, 0x0

    goto :goto_4ce

    .line 446
    .restart local v7       #_arg3:Z
    .restart local v39       #_arg4:J
    .restart local v53       #_result:Z
    :cond_4f6
    const/4 v3, 0x0

    goto :goto_4e6

    .line 451
    .end local v4           #_arg0:Z
    .end local v5           #_arg1:Z
    .end local v6           #_arg2:Z
    .end local v7           #_arg3:Z
    .end local v39           #_arg4:J
    .end local v53           #_result:Z
    :sswitch_4f8
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual/range {p0 .. p0}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->getAllEASAccounts()[Landroid/app/enterprise/Account;

    move-result-object v53

    .line 453
    .local v53, _result:[Landroid/app/enterprise/Account;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    const/4 v3, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v53

    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 455
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 459
    .end local v53           #_result:[Landroid/app/enterprise/Account;
    :sswitch_511
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 460
    invoke-virtual/range {p0 .. p0}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->getDeviceId()Ljava/lang/String;

    move-result-object v53

    .line 461
    .local v53, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    move-object/from16 v0, p3

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 463
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 42
    nop

    :sswitch_data_52a
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_3e
        0x3 -> :sswitch_c4
        0x4 -> :sswitch_182
        0x5 -> :sswitch_1b8
        0x6 -> :sswitch_1e4
        0x7 -> :sswitch_210
        0x8 -> :sswitch_23c
        0x9 -> :sswitch_268
        0xa -> :sswitch_28f
        0xb -> :sswitch_2b6
        0xc -> :sswitch_2dd
        0xd -> :sswitch_2fd
        0xe -> :sswitch_324
        0xf -> :sswitch_34b
        0x10 -> :sswitch_372
        0x11 -> :sswitch_395
        0x12 -> :sswitch_3bc
        0x13 -> :sswitch_3e2
        0x14 -> :sswitch_412
        0x15 -> :sswitch_435
        0x16 -> :sswitch_445
        0x17 -> :sswitch_478
        0x18 -> :sswitch_4ab
        0x19 -> :sswitch_4f8
        0x1a -> :sswitch_511
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
