.class public Landroid/net/wifi/WifiManager$MulticastLock;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MulticastLock"
.end annotation


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mHeld:Z

.field private mRefCount:I

.field private mRefCounted:Z

.field private mTag:Ljava/lang/String;

.field final synthetic this$0:Landroid/net/wifi/WifiManager;


# direct methods
.method private constructor <init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter "tag"

    .prologue
    const/4 v1, 0x0

    .line 1684
    iput-object p1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1685
    iput-object p2, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mTag:Ljava/lang/String;

    .line 1686
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mBinder:Landroid/os/IBinder;

    .line 1687
    iput v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCount:I

    .line 1688
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCounted:Z

    .line 1689
    iput-boolean v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mHeld:Z

    .line 1690
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;Landroid/net/wifi/WifiManager$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1677
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiManager$MulticastLock;-><init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public acquire()V
    .registers 5

    .prologue
    .line 1713
    iget-object v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v1

    .line 1714
    :try_start_3
    iget-boolean v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCounted:Z

    if-eqz v0, :cond_3f

    iget v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCount:I
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_4b

    if-lez v0, :cond_3d

    .line 1716
    :goto_f
    :try_start_f
    iget-object v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    iget-object v0, v0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v2, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mBinder:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mTag:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/net/wifi/IWifiManager;->acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 1717
    iget-object v2, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    monitor-enter v2
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_4b
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1d} :catch_39

    .line 1718
    :try_start_1d
    iget-object v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    #getter for: Landroid/net/wifi/WifiManager;->mActiveLockCount:I
    invoke-static {v0}, Landroid/net/wifi/WifiManager;->access$000(Landroid/net/wifi/WifiManager;)I

    move-result v0

    const/16 v3, 0x32

    if-lt v0, v3, :cond_44

    .line 1719
    iget-object v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    iget-object v0, v0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->releaseMulticastLock()V

    .line 1720
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Exceeded maximum number of wifi locks"

    invoke-direct {v0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1724
    :catchall_36
    move-exception v0

    monitor-exit v2
    :try_end_38
    .catchall {:try_start_1d .. :try_end_38} :catchall_36

    :try_start_38
    throw v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_4b
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_39} :catch_39

    .line 1725
    :catch_39
    move-exception v0

    .line 1727
    :goto_3a
    const/4 v0, 0x1

    :try_start_3b
    iput-boolean v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mHeld:Z

    .line 1729
    :cond_3d
    monitor-exit v1

    .line 1730
    return-void

    .line 1714
    :cond_3f
    iget-boolean v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mHeld:Z
    :try_end_41
    .catchall {:try_start_3b .. :try_end_41} :catchall_4b

    if-nez v0, :cond_3d

    goto :goto_f

    .line 1723
    :cond_44
    :try_start_44
    iget-object v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->access$008(Landroid/net/wifi/WifiManager;)I

    .line 1724
    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_44 .. :try_end_4a} :catchall_36

    goto :goto_3a

    .line 1729
    :catchall_4b
    move-exception v0

    :try_start_4c
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v0
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1830
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1831
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiManager$MulticastLock;->setReferenceCounted(Z)V

    .line 1832
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    .line 1833
    return-void
.end method

.method public isHeld()Z
    .registers 3

    .prologue
    .line 1809
    iget-object v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v1

    .line 1810
    :try_start_3
    iget-boolean v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mHeld:Z

    monitor-exit v1

    return v0

    .line 1811
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public release()V
    .registers 5

    .prologue
    .line 1757
    iget-object v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v1

    .line 1758
    :try_start_3
    iget-boolean v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCounted:Z

    if-eqz v0, :cond_18

    iget v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCount:I

    if-ltz v0, :cond_18

    .line 1759
    iget-object v2, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    monitor-enter v2
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_5f

    .line 1760
    :try_start_12
    iget-object v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->access$010(Landroid/net/wifi/WifiManager;)I

    .line 1761
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_62

    .line 1764
    :cond_18
    :try_start_18
    iget-boolean v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCounted:Z

    if-eqz v0, :cond_65

    iget v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCount:I
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_5f

    if-nez v0, :cond_40

    .line 1766
    :goto_20
    :try_start_20
    iget-object v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    iget-object v0, v0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->releaseMulticastLock()V

    .line 1767
    iget-object v2, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    monitor-enter v2
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_5f
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2a} :catch_6f

    .line 1768
    :try_start_2a
    iget-boolean v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCounted:Z

    if-nez v0, :cond_3c

    .line 1769
    iget-object v3, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    iget v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCount:I

    if-lez v0, :cond_6a

    iget v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCount:I

    :goto_36
    invoke-static {v3, v0}, Landroid/net/wifi/WifiManager;->access$020(Landroid/net/wifi/WifiManager;I)I

    .line 1770
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCount:I

    .line 1772
    :cond_3c
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_2a .. :try_end_3d} :catchall_6c

    .line 1775
    :goto_3d
    const/4 v0, 0x0

    :try_start_3e
    iput-boolean v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mHeld:Z

    .line 1777
    :cond_40
    iget v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCount:I

    if-gez v0, :cond_71

    .line 1778
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MulticastLock under-locked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1781
    :catchall_5f
    move-exception v0

    monitor-exit v1
    :try_end_61
    .catchall {:try_start_3e .. :try_end_61} :catchall_5f

    throw v0

    .line 1761
    :catchall_62
    move-exception v0

    :try_start_63
    monitor-exit v2
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    :try_start_64
    throw v0

    .line 1764
    :cond_65
    iget-boolean v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mHeld:Z
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_5f

    if-eqz v0, :cond_40

    goto :goto_20

    .line 1769
    :cond_6a
    const/4 v0, 0x1

    goto :goto_36

    .line 1772
    :catchall_6c
    move-exception v0

    :try_start_6d
    monitor-exit v2
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    :try_start_6e
    throw v0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_5f
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_6f} :catch_6f

    .line 1773
    :catch_6f
    move-exception v0

    goto :goto_3d

    .line 1781
    :cond_71
    :try_start_71
    monitor-exit v1
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_5f

    .line 1782
    return-void
.end method

.method public setReferenceCounted(Z)V
    .registers 2
    .parameter "refCounted"

    .prologue
    .line 1800
    iput-boolean p1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCounted:Z

    .line 1801
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 1816
    iget-object v4, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v4

    .line 1817
    :try_start_3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 1818
    .local v0, s1:Ljava/lang/String;
    iget-boolean v3, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mHeld:Z

    if-eqz v3, :cond_54

    const-string v1, "held; "

    .line 1819
    .local v1, s2:Ljava/lang/String;
    :goto_11
    iget-boolean v3, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCounted:Z

    if-eqz v3, :cond_57

    .line 1820
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "refcounted: refcount = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCount:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1824
    .local v2, s3:Ljava/lang/String;
    :goto_2b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MulticastLock{ "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "; "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " }"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    monitor-exit v4

    return-object v3

    .line 1818
    .end local v1           #s2:Ljava/lang/String;
    .end local v2           #s3:Ljava/lang/String;
    :cond_54
    const-string v1, ""

    goto :goto_11

    .line 1822
    .restart local v1       #s2:Ljava/lang/String;
    :cond_57
    const-string/jumbo v2, "not refcounted"

    .restart local v2       #s3:Ljava/lang/String;
    goto :goto_2b

    .line 1825
    .end local v0           #s1:Ljava/lang/String;
    .end local v1           #s2:Ljava/lang/String;
    .end local v2           #s3:Ljava/lang/String;
    :catchall_5b
    move-exception v3

    monitor-exit v4
    :try_end_5d
    .catchall {:try_start_3 .. :try_end_5d} :catchall_5b

    throw v3
.end method
