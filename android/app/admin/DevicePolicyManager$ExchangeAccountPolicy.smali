.class public Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;
.super Ljava/lang/Object;
.source "DevicePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/DevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExchangeAccountPolicy"
.end annotation


# instance fields
.field private mAccId:J

.field private mDomain:Ljava/lang/String;

.field private mEmailAddress:Ljava/lang/String;

.field private mHost:Ljava/lang/String;

.field private final mService:Landroid/app/enterprise/IExchangeAccountPolicy;

.field private mUser:Ljava/lang/String;

.field final synthetic this$0:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method private constructor <init>(Landroid/app/admin/DevicePolicyManager;)V
    .registers 3
    .parameter

    .prologue
    .line 2333
    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->this$0:Landroid/app/admin/DevicePolicyManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2334
    const-string v0, "eas_account_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IExchangeAccountPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    .line 2336
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/admin/DevicePolicyManager;Landroid/app/admin/DevicePolicyManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2323
    invoke-direct {p0, p1}, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    return-void
.end method


# virtual methods
.method public addNewAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)J
    .registers 40
    .parameter "displayName"
    .parameter "emailAddress"
    .parameter "easUser"
    .parameter "easDomain"
    .parameter "syncLookback"
    .parameter "syncInterval"
    .parameter "isDefault"
    .parameter "senderName"
    .parameter "protocolVersion"
    .parameter "signature"
    .parameter "emailNotificationVibrateAlways"
    .parameter "emailNotificationVibrateWhenSilent"
    .parameter "serverAddress"
    .parameter "useSSL"
    .parameter "useTLS"
    .parameter "acceptAllCertificates"
    .parameter "serverPassword"
    .parameter "serverPathPrefix"

    .prologue
    .line 2394
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_3f

    .line 2396
    :try_start_6
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    invoke-interface/range {v1 .. v19}, Landroid/app/enterprise/IExchangeAccountPolicy;->addNewAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)J
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_31} :catch_33

    move-result-wide v1

    .line 2405
    :goto_32
    return-wide v1

    .line 2401
    :catch_33
    move-exception v20

    .line 2402
    .local v20, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    move-object/from16 v0, v20

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2405
    .end local v20           #e:Landroid/os/RemoteException;
    :cond_3f
    const-wide/16 v1, -0x1

    goto :goto_32
.end method

.method public deleteAccount(J)Z
    .registers 6
    .parameter "accId"

    .prologue
    .line 2847
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_15

    .line 2849
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IExchangeAccountPolicy;->deleteAccount(J)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 2854
    :goto_a
    return v1

    .line 2850
    :catch_b
    move-exception v0

    .line 2851
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2854
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_15
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getAccountDetails(J)Landroid/app/enterprise/Account;
    .registers 6
    .parameter "accId"

    .prologue
    .line 2829
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_15

    .line 2831
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IExchangeAccountPolicy;->getAccountDetails(J)Landroid/app/enterprise/Account;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 2836
    :goto_a
    return-object v1

    .line 2832
    :catch_b
    move-exception v0

    .line 2833
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2836
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_15
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 7
    .parameter "easDomain"
    .parameter "easUser"
    .parameter "activeSyncHost"

    .prologue
    .line 2811
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_15

    .line 2813
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->getAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-wide v1

    .line 2818
    :goto_a
    return-wide v1

    .line 2814
    :catch_b
    move-exception v0

    .line 2815
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2818
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_15
    const-wide/16 v1, -0x1

    goto :goto_a
.end method

.method public sendAccountsChangedBroadcast()V
    .registers 9

    .prologue
    const-wide/16 v2, 0x0

    .line 2861
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v0, :cond_bd

    .line 2863
    :try_start_6
    iget-wide v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mAccId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b8

    .line 2865
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAccountBaseParameters : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mUser:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2866
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAccountBaseParameters : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mDomain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2867
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAccountBaseParameters : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2868
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAccountBaseParameters : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2869
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAccountBaseParameters : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mAccId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2870
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mUser:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mDomain:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mEmailAddress:Ljava/lang/String;

    iget-object v4, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mHost:Ljava/lang/String;

    iget-wide v5, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mAccId:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->setAccountBaseParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J

    .line 2871
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mHost:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mEmailAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mDomain:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mUser:Ljava/lang/String;

    .line 2872
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mAccId:J

    .line 2874
    :cond_b8
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v0}, Landroid/app/enterprise/IExchangeAccountPolicy;->sendAccountsChangedBroadcast()V
    :try_end_bd
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_bd} :catch_be

    .line 2879
    :cond_bd
    :goto_bd
    return-void

    .line 2875
    :catch_be
    move-exception v7

    .line 2876
    .local v7, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed talking with exchange account policy"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_bd
.end method

.method public setAcceptAllCertificates(ZJ)Z
    .registers 7
    .parameter "acceptAllCertificates"
    .parameter "accId"

    .prologue
    .line 2541
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_15

    .line 2543
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setAcceptAllCertificates(ZJ)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 2548
    :goto_a
    return v1

    .line 2544
    :catch_b
    move-exception v0

    .line 2545
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2548
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_15
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setAccountBaseParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J
    .registers 15
    .parameter "user"
    .parameter "domain"
    .parameter "emailAddress"
    .parameter "host"
    .parameter "accId"

    .prologue
    .line 2424
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v0, :cond_1a

    .line 2426
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Landroid/app/enterprise/IExchangeAccountPolicy;->setAccountBaseParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_10

    move-result-wide v0

    .line 2431
    :goto_f
    return-wide v0

    .line 2427
    :catch_10
    move-exception v7

    .line 2428
    .local v7, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed talking with exchange account policy"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2431
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_1a
    const-wide/16 v0, -0x1

    goto :goto_f
.end method

.method public setAccountName(Ljava/lang/String;J)Z
    .registers 7
    .parameter "accountName"
    .parameter "accId"

    .prologue
    .line 2787
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_15

    .line 2789
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setAccountName(Ljava/lang/String;J)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 2794
    :goto_a
    return v1

    .line 2790
    :catch_b
    move-exception v0

    .line 2791
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2794
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_15
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setAlwaysVibrateOnEmailNotification(ZJ)Z
    .registers 7
    .parameter "enable"
    .parameter "accId"

    .prologue
    .line 2562
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_15

    .line 2564
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setAlwaysVibrateOnEmailNotification(ZJ)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 2569
    :goto_a
    return v1

    .line 2565
    :catch_b
    move-exception v0

    .line 2566
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2569
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_15
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setAsDefaultAccount(J)Z
    .registers 6
    .parameter "accId"

    .prologue
    .line 2766
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_15

    .line 2768
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IExchangeAccountPolicy;->setAsDefaultAccount(J)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 2773
    :goto_a
    return v1

    .line 2769
    :catch_b
    move-exception v0

    .line 2770
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2773
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_15
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setClientAuthCert([BLjava/lang/String;J)V
    .registers 8
    .parameter "certData"
    .parameter "password"
    .parameter "accId"

    .prologue
    .line 2891
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_9

    .line 2893
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/app/enterprise/IExchangeAccountPolicy;->setClientAuthCert([BLjava/lang/String;J)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 2898
    :cond_9
    :goto_9
    return-void

    .line 2894
    :catch_a
    move-exception v0

    .line 2895
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setDomain(Ljava/lang/String;J)V
    .registers 5
    .parameter "domain"
    .parameter "accId"

    .prologue
    .line 2602
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v0, :cond_8

    .line 2604
    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mDomain:Ljava/lang/String;

    .line 2605
    iput-wide p2, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mAccId:J

    .line 2610
    :cond_8
    return-void
.end method

.method public setEmailAddress(Ljava/lang/String;J)Z
    .registers 5
    .parameter "emailAddress"
    .parameter "accId"

    .prologue
    .line 2479
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v0, :cond_8

    .line 2481
    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mEmailAddress:Ljava/lang/String;

    .line 2482
    iput-wide p2, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mAccId:J

    .line 2487
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public setHost(Ljava/lang/String;J)V
    .registers 5
    .parameter "host"
    .parameter "accId"

    .prologue
    .line 2442
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v0, :cond_8

    .line 2444
    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mHost:Ljava/lang/String;

    .line 2445
    iput-wide p2, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mAccId:J

    .line 2450
    :cond_8
    return-void
.end method

.method public setPassword(Ljava/lang/String;J)Z
    .registers 7
    .parameter "password"
    .parameter "accId"

    .prologue
    .line 2622
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_15

    .line 2624
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setPassword(Ljava/lang/String;J)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 2629
    :goto_a
    return v1

    .line 2625
    :catch_b
    move-exception v0

    .line 2626
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2629
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_15
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setPastDaysToSync(IJ)Z
    .registers 7
    .parameter "pastDaysToSync"
    .parameter "accId"

    .prologue
    .line 2684
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_15

    .line 2686
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setPastDaysToSync(IJ)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 2691
    :goto_a
    return v1

    .line 2687
    :catch_b
    move-exception v0

    .line 2688
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2691
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_15
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setProtocolVersion(Ljava/lang/String;J)Z
    .registers 7
    .parameter "protocolVersion"
    .parameter "accId"

    .prologue
    .line 2642
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_15

    .line 2644
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setProtocolVersion(Ljava/lang/String;J)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 2649
    :goto_a
    return v1

    .line 2645
    :catch_b
    move-exception v0

    .line 2646
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2649
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_15
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setSSL(ZJ)Z
    .registers 7
    .parameter "enableSSL"
    .parameter "accId"

    .prologue
    .line 2500
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_15

    .line 2502
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setSSL(ZJ)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 2507
    :goto_a
    return v1

    .line 2503
    :catch_b
    move-exception v0

    .line 2504
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2507
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_15
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setSenderName(Ljava/lang/String;J)Z
    .registers 7
    .parameter "senderName"
    .parameter "accId"

    .prologue
    .line 2728
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_15

    .line 2730
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setSenderName(Ljava/lang/String;J)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 2735
    :goto_a
    return v1

    .line 2731
    :catch_b
    move-exception v0

    .line 2732
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2735
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_15
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setServerPathPrefix(Ljava/lang/String;J)Z
    .registers 5
    .parameter "pathPrefix"
    .parameter "accId"

    .prologue
    .line 2755
    const/4 v0, 0x0

    return v0
.end method

.method public setSignature(Ljava/lang/String;J)Z
    .registers 7
    .parameter "signature"
    .parameter "accId"

    .prologue
    .line 2662
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_15

    .line 2664
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setSignature(Ljava/lang/String;J)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 2669
    :goto_a
    return v1

    .line 2665
    :catch_b
    move-exception v0

    .line 2666
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2669
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_15
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setSilentVibrateOnEmailNotification(ZJ)Z
    .registers 7
    .parameter "enable"
    .parameter "accId"

    .prologue
    .line 2583
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_15

    .line 2585
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setSilentVibrateOnEmailNotification(ZJ)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 2590
    :goto_a
    return v1

    .line 2586
    :catch_b
    move-exception v0

    .line 2587
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2590
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_15
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setSyncInterval(IJ)Z
    .registers 7
    .parameter "syncInterval"
    .parameter "accId"

    .prologue
    .line 2708
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_15

    .line 2710
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setSyncInterval(IJ)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 2715
    :goto_a
    return v1

    .line 2711
    :catch_b
    move-exception v0

    .line 2712
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2715
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_15
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setTLS(ZJ)Z
    .registers 5
    .parameter "enableTLS"
    .parameter "accId"

    .prologue
    .line 2527
    const/4 v0, 0x0

    return v0
.end method

.method public setUser(Ljava/lang/String;J)V
    .registers 5
    .parameter "user"
    .parameter "accId"

    .prologue
    .line 2460
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v0, :cond_8

    .line 2462
    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mUser:Ljava/lang/String;

    .line 2463
    iput-wide p2, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mAccId:J

    .line 2468
    :cond_8
    return-void
.end method
