.class public Landroid/database/CursorWindow;
.super Landroid/database/sqlite/SQLiteClosable;
.source "CursorWindow.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/database/CursorWindow;",
            ">;"
        }
    .end annotation
.end field

.field private static final STATS_TAG:Ljava/lang/String; = "CursorWindowStats"

.field private static final sCursorWindowSize:I

.field private static final sWindowToPidMap:Landroid/util/SparseIntArray;


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mName:Ljava/lang/String;

.field private mStartPos:I

.field public mWindowPtr:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 47
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    sput v0, Landroid/database/CursorWindow;->sCursorWindowSize:I

    .line 694
    new-instance v0, Landroid/database/CursorWindow$1;

    invoke-direct {v0}, Landroid/database/CursorWindow$1;-><init>()V

    sput-object v0, Landroid/database/CursorWindow;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 727
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .parameter "source"

    .prologue
    .line 137
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteClosable;-><init>()V

    .line 60
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    .line 139
    invoke-static {p1}, Landroid/database/CursorWindow;->nativeCreateFromParcel(Landroid/os/Parcel;)I

    move-result v0

    iput v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    .line 140
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    if-nez v0, :cond_21

    .line 141
    new-instance v0, Landroid/database/CursorWindowAllocationException;

    const-string v1, "Cursor window could not be created from binder."

    invoke-direct {v0, v1}, Landroid/database/CursorWindowAllocationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_21
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    invoke-static {v0}, Landroid/database/CursorWindow;->nativeGetName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/database/CursorWindow;->mName:Ljava/lang/String;

    .line 145
    iget-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/database/CursorWindow$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/database/CursorWindow;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 100
    sget v0, Landroid/database/CursorWindow;->sCursorWindowSize:I

    invoke-direct {p0, p1, v0}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;I)V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 6
    .parameter "name"
    .parameter "windowSize"

    .prologue
    .line 106
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteClosable;-><init>()V

    .line 60
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    .line 108
    iput-object p1, p0, Landroid/database/CursorWindow;->mName:Ljava/lang/String;

    .line 110
    invoke-static {p1, p2}, Landroid/database/CursorWindow;->nativeCreate(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    .line 111
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    if-nez v0, :cond_43

    .line 112
    new-instance v0, Landroid/database/CursorWindowAllocationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cursor window allocation of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/database/CursorWindow;->sCursorWindowSize:I

    div-int/lit16 v2, v2, 0x400

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " kb failed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/database/CursorWindow;->printStats()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/CursorWindowAllocationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_43
    iget-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 116
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iget v1, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    invoke-direct {p0, v0, v1}, Landroid/database/CursorWindow;->recordNewWindow(II)V

    .line 117
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3
    .parameter "localWindow"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 134
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method private dispose()V
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 162
    iget-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 164
    :cond_9
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    if-eqz v0, :cond_1a

    .line 165
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    invoke-direct {p0, v0}, Landroid/database/CursorWindow;->recordClosingOfWindow(I)V

    .line 166
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    invoke-static {v0}, Landroid/database/CursorWindow;->nativeDispose(I)V

    .line 167
    const/4 v0, 0x0

    iput v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    .line 169
    :cond_1a
    return-void
.end method

.method private static native nativeAllocRow(I)Z
.end method

.method private static native nativeClear(I)V
.end method

.method private static native nativeCopyStringToBuffer(IIILandroid/database/CharArrayBuffer;)V
.end method

.method private static native nativeCreate(Ljava/lang/String;I)I
.end method

.method private static native nativeCreateFromParcel(Landroid/os/Parcel;)I
.end method

.method private static native nativeDispose(I)V
.end method

.method private static native nativeFreeLastRow(I)V
.end method

.method private static native nativeGetBlob(III)[B
.end method

.method private static native nativeGetDouble(III)D
.end method

.method private static native nativeGetLong(III)J
.end method

.method private static native nativeGetName(I)Ljava/lang/String;
.end method

.method private static native nativeGetNumRows(I)I
.end method

.method private static native nativeGetString(III)Ljava/lang/String;
.end method

.method private static native nativeGetType(III)I
.end method

.method private static native nativePutBlob(I[BII)Z
.end method

.method private static native nativePutDouble(IDII)Z
.end method

.method private static native nativePutLong(IJII)Z
.end method

.method private static native nativePutNull(III)Z
.end method

.method private static native nativePutString(ILjava/lang/String;II)Z
.end method

.method private static native nativeSetNumColumns(II)Z
.end method

.method private static native nativeWriteToParcel(ILandroid/os/Parcel;)V
.end method

.method public static newFromParcel(Landroid/os/Parcel;)Landroid/database/CursorWindow;
    .registers 2
    .parameter "p"

    .prologue
    .line 706
    sget-object v0, Landroid/database/CursorWindow;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/CursorWindow;

    return-object v0
.end method

.method private printStats()Ljava/lang/String;
    .registers 16

    .prologue
    const/16 v14, 0x3d4

    .line 749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 750
    .local v0, buff:Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 751
    .local v3, myPid:I
    const/4 v10, 0x0

    .line 752
    .local v10, total:I
    new-instance v7, Landroid/util/SparseIntArray;

    invoke-direct {v7}, Landroid/util/SparseIntArray;-><init>()V

    .line 753
    .local v7, pidCounts:Landroid/util/SparseIntArray;
    sget-object v13, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    monitor-enter v13

    .line 754
    :try_start_14
    sget-object v12, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    .line 755
    .local v9, size:I
    if-nez v9, :cond_20

    .line 757
    const-string v12, ""

    monitor-exit v13

    .line 780
    :goto_1f
    return-object v12

    .line 759
    :cond_20
    const/4 v2, 0x0

    .local v2, indx:I
    :goto_21
    if-ge v2, v9, :cond_35

    .line 760
    sget-object v12, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    .line 761
    .local v6, pid:I
    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    .line 762
    .local v11, value:I
    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v7, v6, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 759
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 764
    .end local v6           #pid:I
    .end local v11           #value:I
    :cond_35
    monitor-exit v13
    :try_end_36
    .catchall {:try_start_14 .. :try_end_36} :catchall_6c

    .line 765
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    .line 766
    .local v5, numPids:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3b
    if-ge v1, v5, :cond_8d

    .line 767
    const-string v12, " (# cursors opened by "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    invoke-virtual {v7, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .line 769
    .restart local v6       #pid:I
    if-ne v6, v3, :cond_6f

    .line 770
    const-string/jumbo v12, "this proc="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    :goto_4e
    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    .line 775
    .local v4, num:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    add-int/2addr v10, v4

    .line 766
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 764
    .end local v1           #i:I
    .end local v2           #indx:I
    .end local v4           #num:I
    .end local v5           #numPids:I
    .end local v6           #pid:I
    .end local v9           #size:I
    :catchall_6c
    move-exception v12

    :try_start_6d
    monitor-exit v13
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw v12

    .line 772
    .restart local v1       #i:I
    .restart local v2       #indx:I
    .restart local v5       #numPids:I
    .restart local v6       #pid:I
    .restart local v9       #size:I
    :cond_6f
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "pid "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4e

    .line 779
    .end local v6           #pid:I
    :cond_8d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-le v12, v14, :cond_b1

    const/4 v12, 0x0

    invoke-virtual {v0, v12, v14}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 780
    .local v8, s:Ljava/lang/String;
    :goto_98
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "# Open Cursors="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1f

    .line 779
    .end local v8           #s:Ljava/lang/String;
    :cond_b1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_98
.end method

.method private recordClosingOfWindow(I)V
    .registers 4
    .parameter "window"

    .prologue
    .line 739
    sget-object v1, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    monitor-enter v1

    .line 740
    :try_start_3
    sget-object v0, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-nez v0, :cond_d

    .line 742
    monitor-exit v1

    .line 746
    :goto_c
    return-void

    .line 744
    :cond_d
    sget-object v0, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 745
    monitor-exit v1

    goto :goto_c

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method private recordNewWindow(II)V
    .registers 7
    .parameter "pid"
    .parameter "window"

    .prologue
    .line 730
    sget-object v1, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    monitor-enter v1

    .line 731
    :try_start_3
    sget-object v0, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 732
    const-string v0, "CursorWindowStats"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 733
    const-string v0, "CursorWindowStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created a new Cursor. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Landroid/database/CursorWindow;->printStats()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :cond_2d
    monitor-exit v1

    .line 736
    return-void

    .line 735
    :catchall_2f
    move-exception v0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v0
.end method


# virtual methods
.method public allocRow()Z
    .registers 2

    .prologue
    .line 271
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 273
    :try_start_3
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    invoke-static {v0}, Landroid/database/CursorWindow;->nativeAllocRow(I)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_d

    move-result v0

    .line 275
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_d
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 196
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 198
    const/4 v0, 0x0

    :try_start_4
    iput v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    .line 199
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    invoke-static {v0}, Landroid/database/CursorWindow;->nativeClear(I)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_f

    .line 201
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 203
    return-void

    .line 201
    :catchall_f
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public close()V
    .registers 1

    .prologue
    .line 184
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 185
    return-void
.end method

.method public copyStringToBuffer(IILandroid/database/CharArrayBuffer;)V
    .registers 6
    .parameter "row"
    .parameter "column"
    .parameter "buffer"

    .prologue
    .line 487
    if-nez p3, :cond_a

    .line 488
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CharArrayBuffer should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 490
    :cond_a
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 492
    :try_start_d
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v1, p1, v1

    invoke-static {v0, v1, p2, p3}, Landroid/database/CursorWindow;->nativeCopyStringToBuffer(IIILandroid/database/CharArrayBuffer;)V
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_1a

    .line 494
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 496
    return-void

    .line 494
    :catchall_1a
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 710
    const/4 v0, 0x0

    return v0
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 151
    :try_start_0
    iget-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 152
    iget-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 154
    :cond_9
    invoke-direct {p0}, Landroid/database/CursorWindow;->dispose()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_10

    .line 156
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 158
    return-void

    .line 156
    :catchall_10
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public freeLastRow()V
    .registers 2

    .prologue
    .line 283
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 285
    :try_start_3
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    invoke-static {v0}, Landroid/database/CursorWindow;->nativeFreeLastRow(I)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_c

    .line 287
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 289
    return-void

    .line 287
    :catchall_c
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getBlob(II)[B
    .registers 5
    .parameter "row"
    .parameter "column"

    .prologue
    .line 413
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 415
    :try_start_3
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v1, p1, v1

    invoke-static {v0, v1, p2}, Landroid/database/CursorWindow;->nativeGetBlob(III)[B
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_11

    move-result-object v0

    .line 417
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return-object v0

    :catchall_11
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getDouble(II)D
    .registers 5
    .parameter "row"
    .parameter "column"

    .prologue
    .line 553
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 555
    :try_start_3
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v1, p1, v1

    invoke-static {v0, v1, p2}, Landroid/database/CursorWindow;->nativeGetDouble(III)D
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_11

    move-result-wide v0

    .line 557
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return-wide v0

    :catchall_11
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getFloat(II)F
    .registers 5
    .parameter "row"
    .parameter "column"

    .prologue
    .line 606
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getDouble(II)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getInt(II)I
    .registers 5
    .parameter "row"
    .parameter "column"

    .prologue
    .line 590
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getLong(II)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLong(II)J
    .registers 5
    .parameter "row"
    .parameter "column"

    .prologue
    .line 521
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 523
    :try_start_3
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v1, p1, v1

    invoke-static {v0, v1, p2}, Landroid/database/CursorWindow;->nativeGetLong(III)J
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_11

    move-result-wide v0

    .line 525
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return-wide v0

    :catchall_11
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Landroid/database/CursorWindow;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumRows()I
    .registers 2

    .prologue
    .line 237
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 239
    :try_start_3
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    invoke-static {v0}, Landroid/database/CursorWindow;->nativeGetNumRows(I)I
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_d

    move-result v0

    .line 241
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_d
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getShort(II)S
    .registers 5
    .parameter "row"
    .parameter "column"

    .prologue
    .line 574
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getLong(II)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public getStartPosition()I
    .registers 2

    .prologue
    .line 215
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    return v0
.end method

.method public getString(II)Ljava/lang/String;
    .registers 5
    .parameter "row"
    .parameter "column"

    .prologue
    .line 448
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 450
    :try_start_3
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v1, p1, v1

    invoke-static {v0, v1, p2}, Landroid/database/CursorWindow;->nativeGetString(III)Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_11

    move-result-object v0

    .line 452
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return-object v0

    :catchall_11
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getType(II)I
    .registers 5
    .parameter "row"
    .parameter "column"

    .prologue
    .line 383
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 385
    :try_start_3
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v1, p1, v1

    invoke-static {v0, v1, p2}, Landroid/database/CursorWindow;->nativeGetType(III)I
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_11

    move-result v0

    .line 387
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_11
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public isBlob(II)Z
    .registers 5
    .parameter "row"
    .parameter "column"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 317
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result v0

    .line 318
    .local v0, type:I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_9

    if-nez v0, :cond_b

    :cond_9
    const/4 v1, 0x1

    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isFloat(II)Z
    .registers 5
    .parameter "row"
    .parameter "column"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 346
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isLong(II)Z
    .registers 5
    .parameter "row"
    .parameter "column"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 332
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isNull(II)Z
    .registers 4
    .parameter "row"
    .parameter "column"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 302
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isString(II)Z
    .registers 5
    .parameter "row"
    .parameter "column"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 361
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result v0

    .line 362
    .local v0, type:I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_9

    if-nez v0, :cond_b

    :cond_9
    const/4 v1, 0x1

    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method protected onAllReferencesReleased()V
    .registers 1

    .prologue
    .line 724
    invoke-direct {p0}, Landroid/database/CursorWindow;->dispose()V

    .line 725
    return-void
.end method

.method public putBlob([BII)Z
    .registers 6
    .parameter "value"
    .parameter "row"
    .parameter "column"

    .prologue
    .line 618
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 620
    :try_start_3
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v1, p2, v1

    invoke-static {v0, p1, v1, p3}, Landroid/database/CursorWindow;->nativePutBlob(I[BII)Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_11

    move-result v0

    .line 622
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_11
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public putDouble(DII)Z
    .registers 7
    .parameter "value"
    .parameter "row"
    .parameter "column"

    .prologue
    .line 670
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 672
    :try_start_3
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v1, p3, v1

    invoke-static {v0, p1, p2, v1, p4}, Landroid/database/CursorWindow;->nativePutDouble(IDII)Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_11

    move-result v0

    .line 674
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_11
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public putLong(JII)Z
    .registers 7
    .parameter "value"
    .parameter "row"
    .parameter "column"

    .prologue
    .line 652
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 654
    :try_start_3
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v1, p3, v1

    invoke-static {v0, p1, p2, v1, p4}, Landroid/database/CursorWindow;->nativePutLong(IJII)Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_11

    move-result v0

    .line 656
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_11
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public putNull(II)Z
    .registers 5
    .parameter "row"
    .parameter "column"

    .prologue
    .line 686
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 688
    :try_start_3
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v1, p1, v1

    invoke-static {v0, v1, p2}, Landroid/database/CursorWindow;->nativePutNull(III)Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_11

    move-result v0

    .line 690
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_11
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public putString(Ljava/lang/String;II)Z
    .registers 6
    .parameter "value"
    .parameter "row"
    .parameter "column"

    .prologue
    .line 635
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 637
    :try_start_3
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v1, p2, v1

    invoke-static {v0, p1, v1, p3}, Landroid/database/CursorWindow;->nativePutString(ILjava/lang/String;II)Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_11

    move-result v0

    .line 639
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_11
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public setNumColumns(I)Z
    .registers 3
    .parameter "columnNum"

    .prologue
    .line 257
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 259
    :try_start_3
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    invoke-static {v0, p1}, Landroid/database/CursorWindow;->nativeSetNumColumns(II)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_d

    move-result v0

    .line 261
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_d
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public setStartPosition(I)V
    .registers 2
    .parameter "pos"

    .prologue
    .line 228
    iput p1, p0, Landroid/database/CursorWindow;->mStartPos:I

    .line 229
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/database/CursorWindow;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 714
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 715
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    invoke-static {v0, p1}, Landroid/database/CursorWindow;->nativeWriteToParcel(ILandroid/os/Parcel;)V

    .line 717
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_11

    .line 718
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 720
    :cond_11
    return-void
.end method
