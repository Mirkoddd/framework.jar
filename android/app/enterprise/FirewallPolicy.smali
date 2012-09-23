.class public Landroid/app/enterprise/FirewallPolicy;
.super Ljava/lang/Object;
.source "FirewallPolicy.java"


# static fields
.field private static final ALLOW:I = 0x1

.field private static final DENY:I = 0x2

.field private static final LOCATION:I = 0x4

.field private static final PROXY:I = 0x3

.field private static final REROUTE:I = 0x0

.field private static final REROUTE_DEST:I = 0x5

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mService:Landroid/app/enterprise/IFirewallPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-string v0, "FirewallPolicy"

    sput-object v0, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "firewall_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IFirewallPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IFirewallPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    .line 40
    iput-object p1, p0, Landroid/app/enterprise/FirewallPolicy;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method private checkEmptyList(Ljava/util/List;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    .line 707
    if-nez p1, :cond_4

    .line 713
    :cond_3
    :goto_3
    return v0

    .line 710
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 713
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private checkEntries(ILjava/lang/String;)Z
    .registers 23
    .parameter "type"
    .parameter "rule"

    .prologue
    .line 717
    const-string v13, "(.*[a-zA-Z]+.*)|(^\\*$)"

    .line 718
    .local v13, regexDomain:Ljava/lang/String;
    const-string v14, "\\b(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)"

    .line 719
    .local v14, regexIp:Ljava/lang/String;
    const-string v15, "\\b(?:(?:6553[0-5]|655[0-2][0-9]|65[0-4][0-9]{2}|6[0-4][0-9]{3}|[1-5]?[0-9]{1,4}))|\\*"

    .line 720
    .local v15, regexPort:Ljava/lang/String;
    const-string v16, "^(remote|local|\\*)$"

    .line 722
    .local v16, regexPortLocation:Ljava/lang/String;
    packed-switch p1, :pswitch_data_f2

    .line 737
    :goto_b
    :pswitch_b
    const/4 v10, 0x1

    .line 740
    .local v10, parcialResult:Z
    const/4 v6, 0x0

    .local v6, hosts:[Ljava/lang/String;
    const/4 v12, 0x0

    .line 741
    .local v12, ports:[Ljava/lang/String;
    const/16 v17, 0x3a

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 743
    .local v8, index:I
    if-lez v8, :cond_96

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_96

    .line 744
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 745
    .local v2, allHosts:Ljava/lang/String;
    const-string v17, "-"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_65

    .line 746
    const-string v17, "-"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 747
    array-length v0, v6

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_65

    const/16 v17, 0x3

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_65

    .line 748
    const/4 v10, 0x0

    .line 782
    .end local v2           #allHosts:Ljava/lang/String;
    .end local v6           #hosts:[Ljava/lang/String;
    .end local v8           #index:I
    .end local v10           #parcialResult:Z
    .end local v12           #ports:[Ljava/lang/String;
    :goto_52
    return v10

    .line 724
    :pswitch_53
    move-object v13, v14

    .line 725
    const-string v15, "\\b(?:(?:6553[0-5]|655[0-2][0-9]|65[0-4][0-9]{2}|6[0-4][0-9]{3}|[1-5]?[0-9]{1,4}))"

    .line 726
    goto :goto_b

    .line 728
    :pswitch_57
    const-string v13, "(.*[a-zA-Z]+.*)"

    .line 729
    goto :goto_b

    .line 731
    :pswitch_5a
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    goto :goto_52

    .line 733
    :pswitch_63
    move-object v13, v14

    goto :goto_b

    .line 751
    .restart local v2       #allHosts:Ljava/lang/String;
    .restart local v6       #hosts:[Ljava/lang/String;
    .restart local v8       #index:I
    .restart local v10       #parcialResult:Z
    .restart local v12       #ports:[Ljava/lang/String;
    :cond_65
    add-int/lit8 v17, v8, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 752
    .local v3, allPorts:Ljava/lang/String;
    const-string v17, "-"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_98

    .line 753
    const-string v17, "-"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 754
    array-length v0, v12

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_98

    const/16 v17, 0x3

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_98

    .line 755
    const/4 v10, 0x0

    goto :goto_52

    .line 759
    .end local v2           #allHosts:Ljava/lang/String;
    .end local v3           #allPorts:Ljava/lang/String;
    :cond_96
    const/4 v10, 0x0

    goto :goto_52

    .line 762
    .restart local v2       #allHosts:Ljava/lang/String;
    .restart local v3       #allPorts:Ljava/lang/String;
    :cond_98
    if-eqz v6, :cond_ae

    .line 763
    move-object v4, v6

    .local v4, arr$:[Ljava/lang/String;
    array-length v9, v4

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_9d
    if-ge v7, v9, :cond_af

    aget-object v5, v4, v7

    .line 764
    .local v5, host:Ljava/lang/String;
    invoke-virtual {v5, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    .line 765
    if-nez v10, :cond_ab

    .line 766
    invoke-virtual {v5, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    .line 763
    :cond_ab
    add-int/lit8 v7, v7, 0x1

    goto :goto_9d

    .line 770
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v5           #host:Ljava/lang/String;
    .end local v7           #i$:I
    .end local v9           #len$:I
    :cond_ae
    const/4 v10, 0x0

    .line 772
    :cond_af
    if-eqz v12, :cond_c3

    .line 773
    move-object v4, v12

    .restart local v4       #arr$:[Ljava/lang/String;
    array-length v9, v4

    .restart local v9       #len$:I
    const/4 v7, 0x0

    .restart local v7       #i$:I
    :goto_b4
    if-ge v7, v9, :cond_c4

    aget-object v11, v4, v7

    .line 774
    .local v11, port:Ljava/lang/String;
    if-ltz v8, :cond_c0

    if-eqz v10, :cond_c0

    .line 775
    invoke-virtual {v11, v15}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    .line 773
    :cond_c0
    add-int/lit8 v7, v7, 0x1

    goto :goto_b4

    .line 779
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v9           #len$:I
    .end local v11           #port:Ljava/lang/String;
    :cond_c3
    const/4 v10, 0x0

    .line 781
    :cond_c4
    const-string v17, "TAG"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " > "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_52

    .line 722
    :pswitch_data_f2
    .packed-switch 0x0
        :pswitch_57
        :pswitch_b
        :pswitch_b
        :pswitch_53
        :pswitch_5a
        :pswitch_63
    .end packed-switch
.end method


# virtual methods
.method public addIptablesAllowRules(Ljava/util/List;)Z
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Landroid/app/enterprise/FirewallPolicy;->checkEmptyList(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 69
    const/4 v1, 0x0

    .line 76
    :goto_7
    return v1

    .line 70
    :cond_8
    const/4 v1, 0x0

    .line 72
    .local v1, ret:Z
    :try_start_9
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IFirewallPolicy;->addAllowRules(Ljava/util/List;)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10

    move-result v1

    goto :goto_7

    .line 73
    :catch_10
    move-exception v0

    .line 74
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public addIptablesDenyRules(Ljava/util/List;)Z
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Landroid/app/enterprise/FirewallPolicy;->checkEmptyList(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 105
    const/4 v1, 0x0

    .line 112
    :goto_7
    return v1

    .line 106
    :cond_8
    const/4 v1, 0x0

    .line 108
    .local v1, ret:Z
    :try_start_9
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IFirewallPolicy;->addDenyRules(Ljava/util/List;)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10

    move-result v1

    goto :goto_7

    .line 109
    :catch_10
    move-exception v0

    .line 110
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public addIptablesRerouteRules(Ljava/util/List;)Z
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Landroid/app/enterprise/FirewallPolicy;->checkEmptyList(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 140
    const/4 v1, 0x0

    .line 147
    :goto_7
    return v1

    .line 141
    :cond_8
    const/4 v1, 0x0

    .line 143
    .local v1, ret:Z
    :try_start_9
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IFirewallPolicy;->addRerouteRules(Ljava/util/List;)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10

    move-result v1

    goto :goto_7

    .line 144
    :catch_10
    move-exception v0

    .line 145
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public cleanIptablesAllowRules()Z
    .registers 5

    .prologue
    .line 562
    const/4 v1, 0x0

    .line 564
    .local v1, ret:Z
    :try_start_1
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IFirewallPolicy;->cleanAllowRules()Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    .line 568
    :goto_7
    return v1

    .line 565
    :catch_8
    move-exception v0

    .line 566
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public cleanIptablesDenyRules()Z
    .registers 5

    .prologue
    .line 585
    const/4 v1, 0x0

    .line 587
    .local v1, ret:Z
    :try_start_1
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IFirewallPolicy;->cleanDenyRules()Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    .line 591
    :goto_7
    return v1

    .line 588
    :catch_8
    move-exception v0

    .line 589
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public cleanIptablesProxyRules()Z
    .registers 5

    .prologue
    .line 651
    const/4 v1, 0x0

    .line 653
    .local v1, ret:Z
    :try_start_1
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IFirewallPolicy;->cleanProxyRules()Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    .line 657
    :goto_7
    return v1

    .line 654
    :catch_8
    move-exception v0

    .line 655
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public cleanIptablesRerouteRules()Z
    .registers 5

    .prologue
    .line 608
    const/4 v1, 0x0

    .line 610
    .local v1, ret:Z
    :try_start_1
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IFirewallPolicy;->cleanRerouteRules()Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    .line 614
    :goto_7
    return v1

    .line 611
    :catch_8
    move-exception v0

    .line 612
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public getIptablesAllowRules()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "getIptablesAllowRules..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 277
    .local v1, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_c
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "getIptablesAllowRules... 1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IFirewallPolicy;->getAllowRules()Ljava/util/List;

    move-result-object v1

    .line 279
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "getIptablesAllowRules..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_20} :catch_21

    .line 283
    :goto_20
    return-object v1

    .line 280
    :catch_21
    move-exception v0

    .line 281
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method public getIptablesDenyRules()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 299
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v1, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_5
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IFirewallPolicy;->getDenyRules()Ljava/util/List;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result-object v1

    .line 305
    :goto_b
    return-object v1

    .line 302
    :catch_c
    move-exception v0

    .line 303
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public getIptablesOption()Z
    .registers 5

    .prologue
    .line 391
    const/4 v1, 0x0

    .line 393
    .local v1, ret:Z
    :try_start_1
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IFirewallPolicy;->isEnabledRules()Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    .line 397
    :goto_7
    return v1

    .line 394
    :catch_8
    move-exception v0

    .line 395
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public getIptablesProxyOption()Z
    .registers 5

    .prologue
    .line 410
    const/4 v1, 0x0

    .line 412
    .local v1, ret:Z
    :try_start_1
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IFirewallPolicy;->isEnabledProxy()Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    .line 416
    :goto_7
    return v1

    .line 413
    :catch_8
    move-exception v0

    .line 414
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public getIptablesProxyRules()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 343
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .local v1, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_5
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IFirewallPolicy;->getProxyRules()Ljava/util/List;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result-object v1

    .line 349
    :goto_b
    return-object v1

    .line 346
    :catch_c
    move-exception v0

    .line 347
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public getIptablesRerouteRules()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 324
    .local v1, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_5
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IFirewallPolicy;->getRerouteRules()Ljava/util/List;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result-object v1

    .line 328
    :goto_b
    return-object v1

    .line 325
    :catch_c
    move-exception v0

    .line 326
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public getIptablesRules()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .local v1, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_5
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IFirewallPolicy;->getAllRulesForUid()Ljava/util/List;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result-object v1

    .line 375
    :goto_b
    return-object v1

    .line 372
    :catch_c
    move-exception v0

    .line 373
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public removeIptablesAllowRules(Ljava/util/List;)Z
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "Application"

    const-string/jumbo v3, "removeIptablesAllowRules..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-direct {p0, p1}, Landroid/app/enterprise/FirewallPolicy;->checkEmptyList(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 179
    const/4 v1, 0x0

    .line 186
    :goto_f
    return v1

    .line 180
    :cond_10
    const/4 v1, 0x0

    .line 182
    .local v1, ret:Z
    :try_start_11
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IFirewallPolicy;->removeAllowRules(Ljava/util/List;)Z
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_18

    move-result v1

    goto :goto_f

    .line 183
    :catch_18
    move-exception v0

    .line 184
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public removeIptablesDenyRules(Ljava/util/List;)Z
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 214
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Landroid/app/enterprise/FirewallPolicy;->checkEmptyList(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 215
    const/4 v1, 0x0

    .line 222
    :goto_7
    return v1

    .line 216
    :cond_8
    const/4 v1, 0x0

    .line 218
    .local v1, ret:Z
    :try_start_9
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IFirewallPolicy;->removeDenyRules(Ljava/util/List;)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10

    move-result v1

    goto :goto_7

    .line 219
    :catch_10
    move-exception v0

    .line 220
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public removeIptablesRerouteRules(Ljava/util/List;)Z
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 251
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Landroid/app/enterprise/FirewallPolicy;->checkEmptyList(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 252
    const/4 v1, 0x0

    .line 259
    :goto_7
    return v1

    .line 253
    :cond_8
    const/4 v1, 0x0

    .line 255
    .local v1, ret:Z
    :try_start_9
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IFirewallPolicy;->removeRerouteRules(Ljava/util/List;)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10

    move-result v1

    goto :goto_7

    .line 256
    :catch_10
    move-exception v0

    .line 257
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public removeIptablesRules()Z
    .registers 5

    .prologue
    .line 630
    const/4 v1, 0x0

    .line 632
    .local v1, ret:Z
    :try_start_1
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IFirewallPolicy;->cleanAllRules()Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    .line 636
    :goto_7
    return v1

    .line 633
    :catch_8
    move-exception v0

    .line 634
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public setIptablesAllowRules(Ljava/util/List;)Z
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 442
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Landroid/app/enterprise/FirewallPolicy;->checkEmptyList(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 443
    const/4 v1, 0x0

    .line 450
    :goto_7
    return v1

    .line 444
    :cond_8
    const/4 v1, 0x0

    .line 446
    .local v1, ret:Z
    :try_start_9
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IFirewallPolicy;->setAllowRules(Ljava/util/List;)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10

    move-result v1

    goto :goto_7

    .line 447
    :catch_10
    move-exception v0

    .line 448
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public setIptablesDenyRules(Ljava/util/List;)Z
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 476
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Landroid/app/enterprise/FirewallPolicy;->checkEmptyList(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 477
    const/4 v1, 0x0

    .line 484
    :goto_7
    return v1

    .line 478
    :cond_8
    const/4 v1, 0x0

    .line 480
    .local v1, ret:Z
    :try_start_9
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IFirewallPolicy;->setDenyRules(Ljava/util/List;)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10

    move-result v1

    goto :goto_7

    .line 481
    :catch_10
    move-exception v0

    .line 482
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public setIptablesOption(Z)Z
    .registers 6
    .parameter "status"

    .prologue
    .line 673
    const/4 v1, 0x0

    .line 676
    .local v1, ret:Z
    :try_start_1
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IFirewallPolicy;->enableRules(Z)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    .line 680
    :goto_7
    return v1

    .line 677
    :catch_8
    move-exception v0

    .line 678
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public setIptablesProxyOption(Z)Z
    .registers 6
    .parameter "status"

    .prologue
    .line 696
    const/4 v1, 0x0

    .line 699
    .local v1, ret:Z
    :try_start_1
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IFirewallPolicy;->enableProxy(Z)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    .line 703
    :goto_7
    return v1

    .line 700
    :catch_8
    move-exception v0

    .line 701
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public setIptablesProxyRules(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .parameter "ip"
    .parameter "port"

    .prologue
    .line 537
    const/4 v1, 0x0

    .line 540
    .local v1, ret:Z
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 541
    .local v2, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    iget-object v3, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v3, p1, p2}, Landroid/app/enterprise/IFirewallPolicy;->setProxyRules(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_25} :catch_27

    move-result v1

    .line 546
    .end local v2           #rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_26
    return v1

    .line 543
    :catch_27
    move-exception v0

    .line 544
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v4, "RemoteException..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method

.method public setIptablesRerouteRules(Ljava/util/List;)Z
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 511
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Landroid/app/enterprise/FirewallPolicy;->checkEmptyList(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 512
    const/4 v1, 0x0

    .line 519
    :goto_7
    return v1

    .line 513
    :cond_8
    const/4 v1, 0x0

    .line 515
    .local v1, ret:Z
    :try_start_9
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IFirewallPolicy;->setRerouteRules(Ljava/util/List;)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10

    move-result v1

    goto :goto_7

    .line 516
    :catch_10
    move-exception v0

    .line 517
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method
