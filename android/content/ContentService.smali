.class public final Landroid/content/ContentService;
.super Landroid/content/IContentService$Stub;
.source "ContentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ContentService$ObserverNode;,
        Landroid/content/ContentService$ObserverCall;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ContentService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFactoryTest:Z

.field private final mRootNode:Landroid/content/ContentService$ObserverNode;

.field private mSyncManager:Landroid/content/SyncManager;

.field private final mSyncManagerLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .registers 5
    .parameter "context"
    .parameter "factoryTest"

    .prologue
    .line 140
    invoke-direct {p0}, Landroid/content/IContentService$Stub;-><init>()V

    .line 53
    new-instance v0, Landroid/content/ContentService$ObserverNode;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/content/ContentService$ObserverNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ContentService;->mSyncManager:Landroid/content/SyncManager;

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/ContentService;->mSyncManagerLock:Ljava/lang/Object;

    .line 141
    iput-object p1, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    .line 142
    iput-boolean p2, p0, Landroid/content/ContentService;->mFactoryTest:Z

    .line 143
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    .line 144
    return-void
.end method

.method private getSyncManager()Landroid/content/SyncManager;
    .registers 6

    .prologue
    .line 61
    iget-object v2, p0, Landroid/content/ContentService;->mSyncManagerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 64
    :try_start_3
    iget-object v1, p0, Landroid/content/ContentService;->mSyncManager:Landroid/content/SyncManager;

    if-nez v1, :cond_12

    new-instance v1, Landroid/content/SyncManager;

    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    iget-boolean v4, p0, Landroid/content/ContentService;->mFactoryTest:Z

    invoke-direct {v1, v3, v4}, Landroid/content/SyncManager;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Landroid/content/ContentService;->mSyncManager:Landroid/content/SyncManager;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_12} :catch_16

    .line 68
    :cond_12
    :goto_12
    :try_start_12
    iget-object v1, p0, Landroid/content/ContentService;->mSyncManager:Landroid/content/SyncManager;

    monitor-exit v2

    return-object v1

    .line 65
    :catch_16
    move-exception v0

    .line 66
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "ContentService"

    const-string v3, "Can\'t create SyncManager"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12

    .line 69
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_1f
    move-exception v1

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public static main(Landroid/content/Context;Z)Landroid/content/IContentService;
    .registers 4
    .parameter "context"
    .parameter "factoryTest"

    .prologue
    .line 514
    new-instance v0, Landroid/content/ContentService;

    invoke-direct {v0, p0, p1}, Landroid/content/ContentService;-><init>(Landroid/content/Context;Z)V

    .line 515
    .local v0, service:Landroid/content/ContentService;
    const-string v1, "content"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 516
    return-object v0
.end method


# virtual methods
.method public addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    .registers 14
    .parameter "account"
    .parameter "authority"
    .parameter "extras"
    .parameter "pollFrequency"

    .prologue
    .line 326
    iget-object v0, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to write the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v6

    .line 330
    .local v6, identityToken:J
    :try_start_e
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/SyncStorageEngine;->addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_21

    .line 333
    invoke-static {v6, v7}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 335
    return-void

    .line 333
    :catchall_21
    move-exception v0

    invoke-static {v6, v7}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    .registers 7
    .parameter "mask"
    .parameter "callback"

    .prologue
    .line 490
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 492
    .local v0, identityToken:J
    :try_start_4
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 493
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_13

    if-eqz p2, :cond_13

    .line 494
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/content/SyncStorageEngine;->addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_17

    .line 497
    :cond_13
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 499
    return-void

    .line 497
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_17
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 7
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 265
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 267
    .local v0, identityToken:J
    :try_start_4
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 268
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_10

    .line 269
    invoke-virtual {v2, p1, p2}, Landroid/content/SyncManager;->clearScheduledSyncOperations(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 270
    invoke-virtual {v2, p1, p2}, Landroid/content/SyncManager;->cancelActiveSync(Landroid/accounts/Account;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_14

    .line 273
    :cond_10
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 275
    return-void

    .line 273
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_14
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method protected declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 20
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 74
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    const-string v4, "caller doesn\'t have the DUMP permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_73

    move-result-wide v11

    .line 81
    .local v11, identityToken:J
    :try_start_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/ContentService;->mSyncManager:Landroid/content/SyncManager;

    if-nez v2, :cond_62

    .line 82
    const-string v2, "No SyncManager created!  (Disk full?)"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 87
    const-string v2, "Observer tree:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    monitor-enter v15
    :try_end_2c
    .catchall {:try_start_10 .. :try_end_2c} :catchall_6e

    .line 89
    const/4 v2, 0x2

    :try_start_2d
    new-array v8, v2, [I

    .line 90
    .local v8, counts:[I
    new-instance v9, Landroid/util/SparseIntArray;

    invoke-direct {v9}, Landroid/util/SparseIntArray;-><init>()V

    .line 91
    .local v9, pidCounts:Landroid/util/SparseIntArray;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    const-string v6, ""

    const-string v7, "  "

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v2 .. v9}, Landroid/content/ContentService$ObserverNode;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILandroid/util/SparseIntArray;)V

    .line 92
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 93
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v14, sorted:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    .local v10, i:I
    :goto_4e
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v10, v2, :cond_76

    .line 95
    invoke-virtual {v9, v10}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5f
    .catchall {:try_start_2d .. :try_end_5f} :catchall_de

    .line 94
    add-int/lit8 v10, v10, 0x1

    goto :goto_4e

    .line 84
    .end local v8           #counts:[I
    .end local v9           #pidCounts:Landroid/util/SparseIntArray;
    .end local v10           #i:I
    .end local v14           #sorted:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_62
    :try_start_62
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/ContentService;->mSyncManager:Landroid/content/SyncManager;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Landroid/content/SyncManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    :try_end_6d
    .catchall {:try_start_62 .. :try_end_6d} :catchall_6e

    goto :goto_1d

    .line 121
    :catchall_6e
    move-exception v2

    :try_start_6f
    invoke-static {v11, v12}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
    :try_end_73
    .catchall {:try_start_6f .. :try_end_73} :catchall_73

    .line 74
    .end local v11           #identityToken:J
    :catchall_73
    move-exception v2

    monitor-exit p0

    throw v2

    .line 97
    .restart local v8       #counts:[I
    .restart local v9       #pidCounts:Landroid/util/SparseIntArray;
    .restart local v10       #i:I
    .restart local v11       #identityToken:J
    .restart local v14       #sorted:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_76
    :try_start_76
    new-instance v2, Landroid/content/ContentService$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v9}, Landroid/content/ContentService$1;-><init>(Landroid/content/ContentService;Landroid/util/SparseIntArray;)V

    invoke-static {v14, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 111
    const/4 v10, 0x0

    :goto_81
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_b7

    .line 112
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 113
    .local v13, pid:I
    const-string v2, "  pid "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v9, v13}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " observers"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    add-int/lit8 v10, v10, 0x1

    goto :goto_81

    .line 116
    .end local v13           #pid:I
    :cond_b7
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 117
    const-string v2, " Total number of nodes: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v2, 0x0

    aget v2, v8, v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 118
    const-string v2, " Total number of observers: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v2, 0x1

    aget v2, v8, v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 119
    monitor-exit v15
    :try_end_d9
    .catchall {:try_start_76 .. :try_end_d9} :catchall_de

    .line 121
    :try_start_d9
    invoke-static {v11, v12}, Landroid/content/ContentService;->restoreCallingIdentity(J)V
    :try_end_dc
    .catchall {:try_start_d9 .. :try_end_dc} :catchall_73

    .line 123
    monitor-exit p0

    return-void

    .line 119
    .end local v8           #counts:[I
    .end local v9           #pidCounts:Landroid/util/SparseIntArray;
    .end local v10           #i:I
    .end local v14           #sorted:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_de
    move-exception v2

    :try_start_df
    monitor-exit v15
    :try_end_e0
    .catchall {:try_start_df .. :try_end_e0} :catchall_de

    :try_start_e0
    throw v2
    :try_end_e1
    .catchall {:try_start_e0 .. :try_end_e1} :catchall_6e
.end method

.method public getCurrentSyncs()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 448
    iget-object v2, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v4, "no permission to read the sync stats"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 452
    .local v0, identityToken:J
    :try_start_e
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/SyncStorageEngine;->getCurrentSyncs()Ljava/util/List;
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_1e

    move-result-object v2

    .line 454
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_1e
    move-exception v2

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
    .registers 9
    .parameter "account"
    .parameter "providerName"

    .prologue
    .line 361
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v5, "no permission to read the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 365
    .local v0, identityToken:J
    :try_start_e
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 366
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_20

    .line 367
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/content/SyncStorageEngine;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_25

    move-result v3

    .line 371
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 373
    :goto_1f
    return v3

    .line 371
    :cond_20
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 373
    const/4 v3, -0x1

    goto :goto_1f

    .line 371
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_25
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getMasterSyncAutomatically()Z
    .registers 7

    .prologue
    .line 392
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v5, "no permission to read the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 396
    .local v0, identityToken:J
    :try_start_e
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 397
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_20

    .line 398
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/SyncStorageEngine;->getMasterSyncAutomatically()Z
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_25

    move-result v3

    .line 401
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 403
    :goto_1f
    return v3

    .line 401
    :cond_20
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 403
    const/4 v3, 0x0

    goto :goto_1f

    .line 401
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_25
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .parameter "account"
    .parameter "providerName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/PeriodicSync;",
            ">;"
        }
    .end annotation

    .prologue
    .line 349
    iget-object v2, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v4, "no permission to read the sync settings"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 353
    .local v0, identityToken:J
    :try_start_e
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/content/SyncStorageEngine;->getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;)Ljava/util/List;
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_1e

    move-result-object v2

    .line 356
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_1e
    move-exception v2

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getSyncAdapterTypes()[Landroid/content/SyncAdapterType;
    .registers 5

    .prologue
    .line 284
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 286
    .local v0, identityToken:J
    :try_start_4
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 287
    .local v2, syncManager:Landroid/content/SyncManager;
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_10

    move-result-object v3

    .line 289
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    return-object v3

    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_10
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z
    .registers 9
    .parameter "account"
    .parameter "providerName"

    .prologue
    .line 294
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v5, "no permission to read the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 298
    .local v0, identityToken:J
    :try_start_e
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 299
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_20

    .line 300
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_25

    move-result v3

    .line 304
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 306
    :goto_1f
    return v3

    .line 304
    :cond_20
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 306
    const/4 v3, 0x0

    goto :goto_1f

    .line 304
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_25
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;
    .registers 9
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 459
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v5, "no permission to read the sync stats"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 463
    .local v0, identityToken:J
    :try_start_e
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 464
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_20

    .line 465
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/content/SyncStorageEngine;->getStatusByAccountAndAuthority(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_25

    move-result-object v3

    .line 469
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 471
    :goto_1f
    return-object v3

    .line 469
    :cond_20
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 471
    const/4 v3, 0x0

    goto :goto_1f

    .line 469
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_25
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z
    .registers 9
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 432
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v5, "no permission to read the sync stats"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 436
    .local v0, identityToken:J
    :try_start_e
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 437
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_20

    .line 438
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/content/SyncStorageEngine;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_25

    move-result v3

    .line 442
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 444
    :goto_1f
    return v3

    .line 442
    :cond_20
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 444
    const/4 v3, 0x0

    goto :goto_1f

    .line 442
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_25
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z
    .registers 9
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 475
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v5, "no permission to read the sync stats"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 479
    .local v0, identityToken:J
    :try_start_e
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 480
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_20

    .line 481
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/content/SyncStorageEngine;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_25

    move-result v3

    .line 484
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 486
    :goto_1f
    return v3

    .line 484
    :cond_20
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 486
    const/4 v3, 0x0

    goto :goto_1f

    .line 484
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_25
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZZ)V
    .registers 25
    .parameter "uri"
    .parameter "observer"
    .parameter "observerWantsSelfNotifications"
    .parameter "syncToNetwork"

    .prologue
    .line 171
    const-string v1, "ContentService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 172
    const-string v1, "ContentService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notifying update of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from observer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", syncToNetwork "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_3b
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v10

    .line 179
    .local v10, identityToken:J
    :try_start_3f
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v6, calls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentService$ObserverCall;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    move-object/from16 v19, v0

    monitor-enter v19
    :try_end_4b
    .catchall {:try_start_3f .. :try_end_4b} :catchall_b0

    .line 181
    :try_start_4b
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    const/4 v3, 0x0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentService$ObserverNode;->collectObserversLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/util/ArrayList;)V

    .line 183
    monitor-exit v19
    :try_end_5a
    .catchall {:try_start_4b .. :try_end_5a} :catchall_ad

    .line 184
    :try_start_5a
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 185
    .local v14, numCalls:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_5f
    if-ge v9, v14, :cond_f8

    .line 186
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/ContentService$ObserverCall;
    :try_end_67
    .catchall {:try_start_5a .. :try_end_67} :catchall_b0

    .line 188
    .local v16, oc:Landroid/content/ContentService$ObserverCall;
    :try_start_67
    move-object/from16 v0, v16

    iget-object v1, v0, Landroid/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    move-object/from16 v0, v16

    iget-boolean v2, v0, Landroid/content/ContentService$ObserverCall;->mSelfNotify:Z

    invoke-interface {v1, v2}, Landroid/database/IContentObserver;->onChange(Z)V

    .line 189
    const-string v1, "ContentService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 190
    const-string v1, "ContentService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notified "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "update at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_aa
    .catchall {:try_start_67 .. :try_end_aa} :catchall_b0
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_aa} :catch_b5

    .line 185
    :cond_aa
    :goto_aa
    add-int/lit8 v9, v9, 0x1

    goto :goto_5f

    .line 183
    .end local v9           #i:I
    .end local v14           #numCalls:I
    .end local v16           #oc:Landroid/content/ContentService$ObserverCall;
    :catchall_ad
    move-exception v1

    :try_start_ae
    monitor-exit v19
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_ad

    :try_start_af
    throw v1
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_b0

    .line 217
    .end local v6           #calls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentService$ObserverCall;>;"
    :catchall_b0
    move-exception v1

    invoke-static {v10, v11}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v1

    .line 192
    .restart local v6       #calls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentService$ObserverCall;>;"
    .restart local v9       #i:I
    .restart local v14       #numCalls:I
    .restart local v16       #oc:Landroid/content/ContentService$ObserverCall;
    :catch_b5
    move-exception v8

    .line 193
    .local v8, ex:Landroid/os/RemoteException;
    :try_start_b6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    monitor-enter v2
    :try_end_bb
    .catchall {:try_start_b6 .. :try_end_bb} :catchall_b0

    .line 194
    :try_start_bb
    const-string v1, "ContentService"

    const-string v3, "Found dead observer, removing"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    move-object/from16 v0, v16

    iget-object v1, v0, Landroid/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    invoke-interface {v1}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 196
    .local v7, binder:Landroid/os/IBinder;
    move-object/from16 v0, v16

    iget-object v1, v0, Landroid/content/ContentService$ObserverCall;->mNode:Landroid/content/ContentService$ObserverNode;

    #getter for: Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/content/ContentService$ObserverNode;->access$000(Landroid/content/ContentService$ObserverNode;)Ljava/util/ArrayList;

    move-result-object v13

    .line 198
    .local v13, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentService$ObserverNode$ObserverEntry;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 199
    .local v15, numList:I
    const/4 v12, 0x0

    .local v12, j:I
    :goto_d7
    if-ge v12, v15, :cond_f3

    .line 200
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ContentService$ObserverNode$ObserverEntry;

    .line 201
    .local v17, oe:Landroid/content/ContentService$ObserverNode$ObserverEntry;
    move-object/from16 v0, v17

    iget-object v1, v0, Landroid/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-interface {v1}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, v7, :cond_f0

    .line 202
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 203
    add-int/lit8 v12, v12, -0x1

    .line 204
    add-int/lit8 v15, v15, -0x1

    .line 199
    :cond_f0
    add-int/lit8 v12, v12, 0x1

    goto :goto_d7

    .line 207
    .end local v17           #oe:Landroid/content/ContentService$ObserverNode$ObserverEntry;
    :cond_f3
    monitor-exit v2

    goto :goto_aa

    .end local v7           #binder:Landroid/os/IBinder;
    .end local v12           #j:I
    .end local v13           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentService$ObserverNode$ObserverEntry;>;"
    .end local v15           #numList:I
    :catchall_f5
    move-exception v1

    monitor-exit v2
    :try_end_f7
    .catchall {:try_start_bb .. :try_end_f7} :catchall_f5

    :try_start_f7
    throw v1

    .line 210
    .end local v8           #ex:Landroid/os/RemoteException;
    .end local v16           #oc:Landroid/content/ContentService$ObserverCall;
    :cond_f8
    if-eqz p4, :cond_10a

    .line 211
    invoke-direct/range {p0 .. p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v18

    .line 212
    .local v18, syncManager:Landroid/content/SyncManager;
    if-eqz v18, :cond_10a

    .line 213
    const/4 v1, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/SyncManager;->scheduleLocalSync(Landroid/accounts/Account;Ljava/lang/String;)V
    :try_end_10a
    .catchall {:try_start_f7 .. :try_end_10a} :catchall_b0

    .line 217
    .end local v18           #syncManager:Landroid/content/SyncManager;
    :cond_10a
    invoke-static {v10, v11}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 219
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
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
    .line 129
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/IContentService$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    return v1

    .line 130
    :catch_5
    move-exception v0

    .line 133
    .local v0, e:Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_11

    .line 134
    const-string v1, "ContentService"

    const-string v2, "Content Service Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    :cond_11
    throw v0
.end method

.method public registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;)V
    .registers 12
    .parameter "uri"
    .parameter "notifyForDescendents"
    .parameter "observer"

    .prologue
    .line 148
    if-eqz p3, :cond_4

    if-nez p1, :cond_c

    .line 149
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must pass a valid uri and observer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_c
    iget-object v7, p0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    monitor-enter v7

    .line 152
    :try_start_f
    iget-object v0, p0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    iget-object v4, p0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    move-object v1, p1

    move-object v2, p3

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;Landroid/database/IContentObserver;ZLjava/lang/Object;II)V

    .line 156
    monitor-exit v7

    .line 157
    return-void

    .line 156
    :catchall_23
    move-exception v0

    monitor-exit v7
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_23

    throw v0
.end method

.method public removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 9
    .parameter "account"
    .parameter "authority"
    .parameter "extras"

    .prologue
    .line 338
    iget-object v2, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v4, "no permission to write the sync settings"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 342
    .local v0, identityToken:J
    :try_start_e
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Landroid/content/SyncStorageEngine;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_1d

    .line 344
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 346
    return-void

    .line 344
    :catchall_1d
    move-exception v2

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    .registers 6
    .parameter "callback"

    .prologue
    .line 502
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 504
    .local v0, identityToken:J
    :try_start_4
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 505
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_13

    if-eqz p1, :cond_13

    .line 506
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/SyncStorageEngine;->removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_17

    .line 509
    :cond_13
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 511
    return-void

    .line 509
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_17
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 13
    .parameter "account"
    .parameter "authority"
    .parameter "extras"

    .prologue
    .line 241
    invoke-static {p3}, Landroid/content/ContentResolver;->validateSyncExtrasBundle(Landroid/os/Bundle;)V

    .line 244
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v7

    .line 246
    .local v7, identityToken:J
    :try_start_7
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v0

    .line 247
    .local v0, syncManager:Landroid/content/SyncManager;
    if-eqz v0, :cond_16

    .line 248
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Landroid/content/SyncManager;->scheduleSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JZ)V
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_1a

    .line 252
    :cond_16
    invoke-static {v7, v8}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 254
    return-void

    .line 252
    .end local v0           #syncManager:Landroid/content/SyncManager;
    :catchall_1a
    move-exception v1

    invoke-static {v7, v8}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    .registers 10
    .parameter "account"
    .parameter "providerName"
    .parameter "syncable"

    .prologue
    .line 377
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v5, "no permission to write the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 381
    .local v0, identityToken:J
    :try_start_e
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 382
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_1b

    .line 383
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Landroid/content/SyncStorageEngine;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_1f

    .line 387
    :cond_1b
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 389
    return-void

    .line 387
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_1f
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setMasterSyncAutomatically(Z)V
    .registers 11
    .parameter "flag"

    .prologue
    .line 407
    iget-object v6, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v8, "no permission to write the sync settings"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object v6, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v7, "enterprise_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 412
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    iget-object v6, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 413
    .local v5, telMgr:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_36

    if-eqz v5, :cond_36

    .line 414
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/app/enterprise/RoamingPolicy;

    move-result-object v3

    .line 415
    .local v3, rp:Landroid/app/enterprise/RoamingPolicy;
    if-eqz v3, :cond_36

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v6

    if-eqz v6, :cond_36

    invoke-virtual {v3}, Landroid/app/enterprise/RoamingPolicy;->isRoamingSyncEnabled()Z

    move-result v6

    if-nez v6, :cond_36

    .line 416
    const/4 p1, 0x0

    .line 420
    .end local v3           #rp:Landroid/app/enterprise/RoamingPolicy;
    :cond_36
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v1

    .line 422
    .local v1, identityToken:J
    :try_start_3a
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v4

    .line 423
    .local v4, syncManager:Landroid/content/SyncManager;
    if-eqz v4, :cond_47

    .line 424
    invoke-virtual {v4}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/SyncStorageEngine;->setMasterSyncAutomatically(Z)V
    :try_end_47
    .catchall {:try_start_3a .. :try_end_47} :catchall_4b

    .line 427
    :cond_47
    invoke-static {v1, v2}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 429
    return-void

    .line 427
    .end local v4           #syncManager:Landroid/content/SyncManager;
    :catchall_4b
    move-exception v6

    invoke-static {v1, v2}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .registers 10
    .parameter "account"
    .parameter "providerName"
    .parameter "sync"

    .prologue
    .line 310
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v5, "no permission to write the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 314
    .local v0, identityToken:J
    :try_start_e
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 315
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_1b

    .line 316
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Landroid/content/SyncStorageEngine;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_1f

    .line 320
    :cond_1b
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 322
    return-void

    .line 320
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_1f
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public unregisterContentObserver(Landroid/database/IContentObserver;)V
    .registers 4
    .parameter "observer"

    .prologue
    .line 160
    if-nez p1, :cond_a

    .line 161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must pass a valid observer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_a
    iget-object v1, p0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    monitor-enter v1

    .line 164
    :try_start_d
    iget-object v0, p0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    invoke-virtual {v0, p1}, Landroid/content/ContentService$ObserverNode;->removeObserverLocked(Landroid/database/IContentObserver;)Z

    .line 166
    monitor-exit v1

    .line 167
    return-void

    .line 166
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    throw v0
.end method
