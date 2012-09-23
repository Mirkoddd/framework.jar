.class public Landroid/view/WindowManagerImpl;
.super Ljava/lang/Object;
.source "WindowManagerImpl.java"

# interfaces
.implements Landroid/view/WindowManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowManagerImpl$CompatModeWrapper;
    }
.end annotation


# static fields
.field public static final ADD_APP_EXITING:I = -0x4

.field public static final ADD_BAD_APP_TOKEN:I = -0x1

.field public static final ADD_BAD_SUBWINDOW_TOKEN:I = -0x2

.field public static final ADD_DUPLICATE_ADD:I = -0x5

.field public static final ADD_FLAG_APP_VISIBLE:I = 0x2

.field public static final ADD_FLAG_IN_TOUCH_MODE:I = 0x1

.field public static final ADD_MULTIPLE_SINGLETON:I = -0x7

.field public static final ADD_NOT_APP_TOKEN:I = -0x3

.field public static final ADD_OKAY:I = 0x0

.field public static final ADD_PERMISSION_DENIED:I = -0x8

.field public static final ADD_STARTING_NOT_NEEDED:I = -0x6

.field public static final RELAYOUT_DEFER_SURFACE_DESTROY:I = 0x2

.field public static final RELAYOUT_INSETS_PENDING:I = 0x1

.field public static final RELAYOUT_RES_FIRST_TIME:I = 0x2

.field public static final RELAYOUT_RES_IN_TOUCH_MODE:I = 0x1

.field public static final RELAYOUT_RES_SURFACE_CHANGED:I = 0x4

.field private static final sCompatWindowManagers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/res/CompatibilityInfo;",
            "Landroid/view/WindowManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;

.field private static final sWindowManager:Landroid/view/WindowManagerImpl;


# instance fields
.field private mParams:[Landroid/view/WindowManager$LayoutParams;

.field private mRoots:[Landroid/view/ViewRootImpl;

.field private mViews:[Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 109
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/WindowManagerImpl;->sLock:Ljava/lang/Object;

    .line 110
    new-instance v0, Landroid/view/WindowManagerImpl;

    invoke-direct {v0}, Landroid/view/WindowManagerImpl;-><init>()V

    sput-object v0, Landroid/view/WindowManagerImpl;->sWindowManager:Landroid/view/WindowManagerImpl;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/view/WindowManagerImpl;->sCompatWindowManagers:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 114
    return-void
.end method

.method private addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/CompatibilityInfoHolder;Z)V
    .registers 17
    .parameter "view"
    .parameter "params"
    .parameter "cih"
    .parameter "nest"

    .prologue
    .line 222
    instance-of v8, p2, Landroid/view/WindowManager$LayoutParams;

    if-nez v8, :cond_c

    .line 223
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Params must be WindowManager.LayoutParams"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_c
    move-object v7, p2

    .line 227
    check-cast v7, Landroid/view/WindowManager$LayoutParams;

    .line 231
    .local v7, wparams:Landroid/view/WindowManager$LayoutParams;
    const/4 v5, 0x0

    .line 233
    .local v5, panelParentView:Landroid/view/View;
    monitor-enter p0

    .line 241
    const/4 v8, 0x0

    :try_start_12
    invoke-direct {p0, p1, v8}, Landroid/view/WindowManagerImpl;->findViewLocked(Landroid/view/View;Z)I

    move-result v2

    .line 242
    .local v2, index:I
    if-ltz v2, :cond_4f

    .line 243
    if-nez p4, :cond_3c

    .line 244
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "View "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " has already been added to the window manager."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 311
    .end local v2           #index:I
    :catchall_39
    move-exception v8

    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_12 .. :try_end_3b} :catchall_39

    throw v8

    .line 247
    .restart local v2       #index:I
    :cond_3c
    :try_start_3c
    iget-object v8, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v6, v8, v2

    .line 248
    .local v6, root:Landroid/view/ViewRootImpl;
    iget v8, v6, Landroid/view/ViewRootImpl;->mAddNesting:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v6, Landroid/view/ViewRootImpl;->mAddNesting:I

    .line 250
    invoke-virtual {p1, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewRootImpl;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V

    .line 252
    monitor-exit p0

    .line 314
    :goto_4e
    return-void

    .line 257
    .end local v6           #root:Landroid/view/ViewRootImpl;
    :cond_4f
    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v9, 0x3e8

    if-lt v8, v9, :cond_9e

    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v9, 0x7cf

    if-gt v8, v9, :cond_9e

    .line 259
    const/4 v3, -0x1

    .line 260
    .local v3, miniDialogParentIndex:I
    iget-object v8, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    if-eqz v8, :cond_7b

    iget-object v8, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    array-length v0, v8

    .line 261
    .local v0, count:I
    :goto_63
    const/4 v1, 0x0

    .local v1, i:I
    :goto_64
    if-ge v1, v0, :cond_89

    .line 262
    iget-object v8, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v8, v8, v1

    iget-object v8, v8, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v8}, Landroid/view/ViewRootImpl$W;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    iget-object v9, v7, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v8, v9, :cond_7d

    .line 263
    iget-object v8, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    aget-object v5, v8, v1

    .line 261
    :cond_78
    :goto_78
    add-int/lit8 v1, v1, 0x1

    goto :goto_64

    .line 260
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_7b
    const/4 v0, 0x0

    goto :goto_63

    .line 265
    .restart local v0       #count:I
    .restart local v1       #i:I
    :cond_7d
    iget-object v8, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    aget-object v8, v8, v1

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v9, 0x835

    if-ne v8, v9, :cond_78

    .line 266
    move v3, v1

    goto :goto_78

    .line 271
    :cond_89
    if-nez v5, :cond_9e

    .line 272
    const/4 v8, -0x1

    if-eq v3, v8, :cond_9e

    .line 273
    iget-object v8, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v8, v8, v3

    iget-object v8, v8, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v8}, Landroid/view/ViewRootImpl$W;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    iput-object v8, v7, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 274
    iget-object v8, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    aget-object v5, v8, v3

    .line 279
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #miniDialogParentIndex:I
    :cond_9e
    new-instance v6, Landroid/view/ViewRootImpl;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/view/ViewRootImpl;-><init>(Landroid/content/Context;)V

    .line 280
    .restart local v6       #root:Landroid/view/ViewRootImpl;
    const/4 v8, 0x1

    iput v8, v6, Landroid/view/ViewRootImpl;->mAddNesting:I

    .line 281
    if-nez p3, :cond_de

    .line 282
    new-instance v8, Landroid/view/CompatibilityInfoHolder;

    invoke-direct {v8}, Landroid/view/CompatibilityInfoHolder;-><init>()V

    iput-object v8, v6, Landroid/view/ViewRootImpl;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    .line 287
    :goto_b3
    invoke-virtual {p1, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    iget-object v8, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    if-nez v8, :cond_e1

    .line 290
    const/4 v2, 0x1

    .line 291
    const/4 v8, 0x1

    new-array v8, v8, [Landroid/view/View;

    iput-object v8, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    .line 292
    const/4 v8, 0x1

    new-array v8, v8, [Landroid/view/ViewRootImpl;

    iput-object v8, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    .line 293
    const/4 v8, 0x1

    new-array v8, v8, [Landroid/view/WindowManager$LayoutParams;

    iput-object v8, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    .line 306
    :goto_ca
    add-int/lit8 v2, v2, -0x1

    .line 308
    iget-object v8, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    aput-object p1, v8, v2

    .line 309
    iget-object v8, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    aput-object v6, v8, v2

    .line 310
    iget-object v8, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    aput-object v7, v8, v2

    .line 311
    monitor-exit p0
    :try_end_d9
    .catchall {:try_start_3c .. :try_end_d9} :catchall_39

    .line 313
    invoke-virtual {v6, p1, v7, v5}, Landroid/view/ViewRootImpl;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/View;)V

    goto/16 :goto_4e

    .line 284
    :cond_de
    :try_start_de
    iput-object p3, v6, Landroid/view/ViewRootImpl;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    goto :goto_b3

    .line 295
    :cond_e1
    iget-object v8, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    array-length v8, v8

    add-int/lit8 v2, v8, 0x1

    .line 296
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    .line 297
    .local v4, old:[Ljava/lang/Object;
    new-array v8, v2, [Landroid/view/View;

    iput-object v8, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    .line 298
    const/4 v8, 0x0

    iget-object v9, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    const/4 v10, 0x0

    add-int/lit8 v11, v2, -0x1

    invoke-static {v4, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    .line 300
    new-array v8, v2, [Landroid/view/ViewRootImpl;

    iput-object v8, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    .line 301
    const/4 v8, 0x0

    iget-object v9, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    const/4 v10, 0x0

    add-int/lit8 v11, v2, -0x1

    invoke-static {v4, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 302
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    .line 303
    new-array v8, v2, [Landroid/view/WindowManager$LayoutParams;

    iput-object v8, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    .line 304
    const/4 v8, 0x0

    iget-object v9, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    const/4 v10, 0x0

    add-int/lit8 v11, v2, -0x1

    invoke-static {v4, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_113
    .catchall {:try_start_de .. :try_end_113} :catchall_39

    goto :goto_ca
.end method

.method private findViewLocked(Landroid/view/View;Z)I
    .registers 7
    .parameter "view"
    .parameter "required"

    .prologue
    .line 591
    monitor-enter p0

    .line 592
    :try_start_1
    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    if-eqz v2, :cond_13

    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    array-length v0, v2

    .line 593
    .local v0, count:I
    :goto_8
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    if-ge v1, v0, :cond_18

    .line 594
    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_15

    .line 595
    monitor-exit p0

    .line 602
    .end local v1           #i:I
    :goto_12
    return v1

    .line 592
    .end local v0           #count:I
    :cond_13
    const/4 v0, 0x0

    goto :goto_8

    .line 593
    .restart local v0       #count:I
    .restart local v1       #i:I
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 598
    :cond_18
    if-eqz p2, :cond_25

    .line 599
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "View not attached to window manager"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 603
    .end local v0           #count:I
    .end local v1           #i:I
    :catchall_22
    move-exception v2

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_22

    throw v2

    .line 602
    .restart local v0       #count:I
    .restart local v1       #i:I
    :cond_25
    const/4 v1, -0x1

    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_22

    goto :goto_12
.end method

.method public static getDefault(Landroid/content/res/CompatibilityInfo;)Landroid/view/WindowManager;
    .registers 5
    .parameter "compatInfo"

    .prologue
    .line 176
    new-instance v0, Landroid/view/CompatibilityInfoHolder;

    invoke-direct {v0}, Landroid/view/CompatibilityInfoHolder;-><init>()V

    .line 177
    .local v0, cih:Landroid/view/CompatibilityInfoHolder;
    invoke-virtual {v0, p0}, Landroid/view/CompatibilityInfoHolder;->set(Landroid/content/res/CompatibilityInfo;)V

    .line 178
    invoke-virtual {v0}, Landroid/view/CompatibilityInfoHolder;->getIfNeeded()Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    if-nez v2, :cond_11

    .line 179
    sget-object v1, Landroid/view/WindowManagerImpl;->sWindowManager:Landroid/view/WindowManagerImpl;

    .line 193
    :goto_10
    return-object v1

    .line 182
    :cond_11
    sget-object v3, Landroid/view/WindowManagerImpl;->sLock:Ljava/lang/Object;

    monitor-enter v3

    .line 188
    :try_start_14
    sget-object v2, Landroid/view/WindowManagerImpl;->sCompatWindowManagers:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 189
    .local v1, wm:Landroid/view/WindowManager;
    if-nez v1, :cond_2a

    .line 190
    new-instance v1, Landroid/view/WindowManagerImpl$CompatModeWrapper;

    .end local v1           #wm:Landroid/view/WindowManager;
    sget-object v2, Landroid/view/WindowManagerImpl;->sWindowManager:Landroid/view/WindowManagerImpl;

    invoke-direct {v1, v2, v0}, Landroid/view/WindowManagerImpl$CompatModeWrapper;-><init>(Landroid/view/WindowManager;Landroid/view/CompatibilityInfoHolder;)V

    .line 191
    .restart local v1       #wm:Landroid/view/WindowManager;
    sget-object v2, Landroid/view/WindowManagerImpl;->sCompatWindowManagers:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :cond_2a
    monitor-exit v3

    goto :goto_10

    .line 194
    .end local v1           #wm:Landroid/view/WindowManager;
    :catchall_2c
    move-exception v2

    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_14 .. :try_end_2e} :catchall_2c

    throw v2
.end method

.method public static getDefault(Landroid/view/CompatibilityInfoHolder;)Landroid/view/WindowManager;
    .registers 3
    .parameter "compatInfo"

    .prologue
    .line 198
    new-instance v0, Landroid/view/WindowManagerImpl$CompatModeWrapper;

    sget-object v1, Landroid/view/WindowManagerImpl;->sWindowManager:Landroid/view/WindowManagerImpl;

    invoke-direct {v0, v1, p0}, Landroid/view/WindowManagerImpl$CompatModeWrapper;-><init>(Landroid/view/WindowManager;Landroid/view/CompatibilityInfoHolder;)V

    return-object v0
.end method

.method public static getDefault()Landroid/view/WindowManagerImpl;
    .registers 1

    .prologue
    .line 172
    sget-object v0, Landroid/view/WindowManagerImpl;->sWindowManager:Landroid/view/WindowManagerImpl;

    return-object v0
.end method

.method private static removeItem([Ljava/lang/Object;[Ljava/lang/Object;I)V
    .registers 5
    .parameter "dst"
    .parameter "src"
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 580
    array-length v0, p0

    if-lez v0, :cond_15

    .line 581
    if-lez p2, :cond_9

    .line 582
    invoke-static {p1, v1, p0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 584
    :cond_9
    array-length v0, p0

    if-ge p2, v0, :cond_15

    .line 585
    add-int/lit8 v0, p2, 0x1

    array-length v1, p1

    sub-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v0, p0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 588
    :cond_15
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    .line 206
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p1, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .parameter "view"
    .parameter "params"

    .prologue
    .line 211
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/CompatibilityInfoHolder;Z)V

    .line 212
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/CompatibilityInfoHolder;)V
    .registers 5
    .parameter "view"
    .parameter "params"
    .parameter "cih"

    .prologue
    .line 215
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/CompatibilityInfoHolder;Z)V

    .line 216
    return-void
.end method

.method public closeAll()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 572
    invoke-virtual {p0, v0, v0, v0}, Landroid/view/WindowManagerImpl;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    return-void
.end method

.method public closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "token"
    .parameter "who"
    .parameter "what"

    .prologue
    .line 411
    monitor-enter p0

    .line 412
    :try_start_1
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    if-nez v4, :cond_7

    .line 413
    monitor-exit p0

    .line 439
    :goto_6
    return-void

    .line 415
    :cond_7
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    array-length v0, v4

    .line 417
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, v0, :cond_6e

    .line 420
    if-eqz p1, :cond_17

    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    aget-object v4, v4, v1

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v4, p1, :cond_6b

    .line 421
    :cond_17
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v3, v4, v1

    .line 422
    .local v3, root:Landroid/view/ViewRootImpl;
    const/4 v4, 0x1

    iput v4, v3, Landroid/view/ViewRootImpl;->mAddNesting:I

    .line 425
    if-eqz p2, :cond_64

    .line 426
    new-instance v2, Landroid/view/WindowLeaked;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has leaked window "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " that was originally added here"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/view/WindowLeaked;-><init>(Ljava/lang/String;)V

    .line 429
    .local v2, leak:Landroid/view/WindowLeaked;
    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getLocation()Landroid/view/WindowLeaked;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/WindowLeaked;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/WindowLeaked;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 430
    const-string v4, "WindowManager"

    invoke-virtual {v2}, Landroid/view/WindowLeaked;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 433
    .end local v2           #leak:Landroid/view/WindowLeaked;
    :cond_64
    invoke-virtual {p0, v1}, Landroid/view/WindowManagerImpl;->removeViewLocked(I)Landroid/view/View;

    .line 434
    add-int/lit8 v1, v1, -0x1

    .line 435
    add-int/lit8 v0, v0, -0x1

    .line 417
    .end local v3           #root:Landroid/view/ViewRootImpl;
    :cond_6b
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 438
    :cond_6e
    monitor-exit p0

    goto :goto_6

    .end local v0           #count:I
    .end local v1           #i:I
    :catchall_70
    move-exception v4

    monitor-exit p0
    :try_end_72
    .catchall {:try_start_1 .. :try_end_72} :catchall_70

    throw v4
.end method

.method public dumpGfxInfo(Ljava/io/FileDescriptor;)V
    .registers 16
    .parameter "fd"

    .prologue
    const/high16 v13, 0x4480

    .line 490
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 491
    .local v2, fout:Ljava/io/FileOutputStream;
    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 493
    .local v6, pw:Ljava/io/PrintWriter;
    :try_start_c
    monitor-enter p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b2

    .line 494
    :try_start_d
    iget-object v9, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    if-eqz v9, :cond_aa

    .line 495
    const-string v9, "View hierarchy:"

    invoke-virtual {v6, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 497
    iget-object v9, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    array-length v0, v9

    .line 499
    .local v0, count:I
    const/4 v8, 0x0

    .line 500
    .local v8, viewsCount:I
    const/4 v1, 0x0

    .line 501
    .local v1, displayListsSize:I
    const/4 v9, 0x2

    new-array v4, v9, [I

    .line 503
    .local v4, info:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1f
    if-ge v3, v0, :cond_7b

    .line 504
    iget-object v9, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v7, v9, v3

    .line 505
    .local v7, root:Landroid/view/ViewRootImpl;
    invoke-virtual {v7, v6, v4}, Landroid/view/ViewRootImpl;->dumpGfxInfo(Ljava/io/PrintWriter;[I)V

    .line 507
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x40

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 509
    .local v5, name:Ljava/lang/String;
    const-string v9, "  %s: %d views, %.2f kB (display lists)\n"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aget v12, v4, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const/4 v12, 0x1

    aget v12, v4, v12

    int-to-float v12, v12

    div-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v6, v9, v10}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 512
    const/4 v9, 0x0

    aget v9, v4, v9

    add-int/2addr v8, v9

    .line 513
    const/4 v9, 0x1

    aget v9, v4, v9

    add-int/2addr v1, v9

    .line 503
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 516
    .end local v5           #name:Ljava/lang/String;
    .end local v7           #root:Landroid/view/ViewRootImpl;
    :cond_7b
    const-string v9, "\nTotal ViewRootImpl: %d\n"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v6, v9, v10}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 517
    const-string v9, "Total Views:        %d\n"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v6, v9, v10}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 518
    const-string v9, "Total DisplayList:  %.2f kB\n\n"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    int-to-float v12, v1

    div-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v6, v9, v10}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 520
    .end local v0           #count:I
    .end local v1           #displayListsSize:I
    .end local v3           #i:I
    .end local v4           #info:[I
    .end local v8           #viewsCount:I
    :cond_aa
    monitor-exit p0
    :try_end_ab
    .catchall {:try_start_d .. :try_end_ab} :catchall_af

    .line 522
    invoke-virtual {v6}, Ljava/io/PrintWriter;->flush()V

    .line 524
    return-void

    .line 520
    :catchall_af
    move-exception v9

    :try_start_b0
    monitor-exit p0
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_af

    :try_start_b1
    throw v9
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b2

    .line 522
    :catchall_b2
    move-exception v9

    invoke-virtual {v6}, Ljava/io/PrintWriter;->flush()V

    throw v9
.end method

.method finishRemoveViewLocked(Landroid/view/View;I)V
    .registers 8
    .parameter "view"
    .parameter "index"

    .prologue
    .line 387
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    array-length v0, v4

    .line 390
    .local v0, count:I
    add-int/lit8 v4, v0, -0x1

    new-array v3, v4, [Landroid/view/View;

    .line 391
    .local v3, tmpViews:[Landroid/view/View;
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    invoke-static {v3, v4, p2}, Landroid/view/WindowManagerImpl;->removeItem([Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 392
    iput-object v3, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    .line 394
    add-int/lit8 v4, v0, -0x1

    new-array v2, v4, [Landroid/view/ViewRootImpl;

    .line 395
    .local v2, tmpRoots:[Landroid/view/ViewRootImpl;
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    invoke-static {v2, v4, p2}, Landroid/view/WindowManagerImpl;->removeItem([Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 396
    iput-object v2, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    .line 398
    add-int/lit8 v4, v0, -0x1

    new-array v1, v4, [Landroid/view/WindowManager$LayoutParams;

    .line 400
    .local v1, tmpParams:[Landroid/view/WindowManager$LayoutParams;
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    invoke-static {v1, v4, p2}, Landroid/view/WindowManagerImpl;->removeItem([Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 401
    iput-object v1, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    .line 403
    if-eqz p1, :cond_2a

    .line 404
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 408
    :cond_2a
    return-void
.end method

.method public getDefaultDisplay()Landroid/view/Display;
    .registers 4

    .prologue
    .line 576
    new-instance v0, Landroid/view/Display;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/Display;-><init>(ILandroid/view/CompatibilityInfoHolder;)V

    return-object v0
.end method

.method public getRootViewLayoutParameter(Landroid/view/View;)Landroid/view/WindowManager$LayoutParams;
    .registers 8
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    .line 552
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 553
    .local v2, vp:Landroid/view/ViewParent;
    :goto_5
    if-eqz v2, :cond_10

    instance-of v5, v2, Landroid/view/ViewRootImpl;

    if-nez v5, :cond_10

    .line 554
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_5

    .line 557
    :cond_10
    if-nez v2, :cond_13

    .line 568
    :cond_12
    :goto_12
    return-object v4

    :cond_13
    move-object v3, v2

    .line 559
    check-cast v3, Landroid/view/ViewRootImpl;

    .line 561
    .local v3, vr:Landroid/view/ViewRootImpl;
    iget-object v5, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    array-length v0, v5

    .line 562
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1a
    if-ge v1, v0, :cond_12

    .line 563
    iget-object v5, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v5, v5, v1

    if-ne v5, v3, :cond_27

    .line 564
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    aget-object v4, v4, v1

    goto :goto_12

    .line 562
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a
.end method

.method public isHardwareAccelerated()Z
    .registers 2

    .prologue
    .line 202
    const/4 v0, 0x0

    return v0
.end method

.method public removeView(Landroid/view/View;)V
    .registers 7
    .parameter "view"

    .prologue
    .line 335
    monitor-enter p0

    .line 336
    const/4 v2, 0x1

    :try_start_2
    invoke-direct {p0, p1, v2}, Landroid/view/WindowManagerImpl;->findViewLocked(Landroid/view/View;Z)I

    move-result v1

    .line 337
    .local v1, index:I
    invoke-virtual {p0, v1}, Landroid/view/WindowManagerImpl;->removeViewLocked(I)Landroid/view/View;

    move-result-object v0

    .line 338
    .local v0, curView:Landroid/view/View;
    if-ne v0, p1, :cond_e

    .line 339
    monitor-exit p0

    return-void

    .line 342
    :cond_e
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling with view "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but the ViewAncestor is attached to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 344
    .end local v0           #curView:Landroid/view/View;
    .end local v1           #index:I
    :catchall_31
    move-exception v2

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_2 .. :try_end_33} :catchall_31

    throw v2
.end method

.method public removeViewImmediate(Landroid/view/View;)V
    .registers 8
    .parameter "view"

    .prologue
    .line 348
    monitor-enter p0

    .line 349
    const/4 v3, 0x1

    :try_start_2
    invoke-direct {p0, p1, v3}, Landroid/view/WindowManagerImpl;->findViewLocked(Landroid/view/View;Z)I

    move-result v1

    .line 350
    .local v1, index:I
    iget-object v3, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v2, v3, v1

    .line 351
    .local v2, root:Landroid/view/ViewRootImpl;
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    .line 353
    .local v0, curView:Landroid/view/View;
    const/4 v3, 0x0

    iput v3, v2, Landroid/view/ViewRootImpl;->mAddNesting:I

    .line 354
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewRootImpl;->die(Z)V

    .line 355
    invoke-virtual {p0, v0, v1}, Landroid/view/WindowManagerImpl;->finishRemoveViewLocked(Landroid/view/View;I)V

    .line 356
    if-ne v0, p1, :cond_1c

    .line 357
    monitor-exit p0

    return-void

    .line 360
    :cond_1c
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling with view "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but the ViewAncestor is attached to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 362
    .end local v0           #curView:Landroid/view/View;
    .end local v1           #index:I
    .end local v2           #root:Landroid/view/ViewRootImpl;
    :catchall_3f
    move-exception v3

    monitor-exit p0
    :try_end_41
    .catchall {:try_start_2 .. :try_end_41} :catchall_3f

    throw v3
.end method

.method removeViewLocked(I)Landroid/view/View;
    .registers 6
    .parameter "index"

    .prologue
    .line 366
    iget-object v3, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v1, v3, p1

    .line 367
    .local v1, root:Landroid/view/ViewRootImpl;
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v2

    .line 370
    .local v2, view:Landroid/view/View;
    iget v3, v1, Landroid/view/ViewRootImpl;->mAddNesting:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v1, Landroid/view/ViewRootImpl;->mAddNesting:I

    .line 371
    iget v3, v1, Landroid/view/ViewRootImpl;->mAddNesting:I

    if-lez v3, :cond_13

    .line 383
    :goto_12
    return-object v2

    .line 375
    :cond_13
    if-eqz v2, :cond_2a

    .line 376
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 377
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_2a

    .line 378
    iget-object v3, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/inputmethod/InputMethodManager;->windowDismissed(Landroid/os/IBinder;)V

    .line 381
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_2a
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewRootImpl;->die(Z)V

    .line 382
    invoke-virtual {p0, v2, p1}, Landroid/view/WindowManagerImpl;->finishRemoveViewLocked(Landroid/view/View;I)V

    goto :goto_12
.end method

.method public reportNewConfiguration(Landroid/content/res/Configuration;)V
    .registers 7
    .parameter "config"

    .prologue
    .line 541
    monitor-enter p0

    .line 542
    :try_start_1
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    array-length v1, v4

    .line 543
    .local v1, count:I
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_18

    .line 544
    .end local p1
    .local v0, config:Landroid/content/res/Configuration;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a
    if-ge v2, v1, :cond_16

    .line 545
    :try_start_c
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v3, v4, v2

    .line 546
    .local v3, root:Landroid/view/ViewRootImpl;
    invoke-virtual {v3, v0}, Landroid/view/ViewRootImpl;->requestUpdateConfiguration(Landroid/content/res/Configuration;)V

    .line 544
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 548
    .end local v3           #root:Landroid/view/ViewRootImpl;
    :cond_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_1b

    .line 549
    return-void

    .line 548
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v1           #count:I
    .end local v2           #i:I
    .restart local p1
    :catchall_18
    move-exception v4

    :goto_19
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v4

    .end local p1
    .restart local v0       #config:Landroid/content/res/Configuration;
    .restart local v1       #count:I
    .restart local v2       #i:I
    :catchall_1b
    move-exception v4

    move-object p1, v0

    .end local v0           #config:Landroid/content/res/Configuration;
    .restart local p1
    goto :goto_19
.end method

.method public setStoppedState(Landroid/os/IBinder;Z)V
    .registers 7
    .parameter "token"
    .parameter "stopped"

    .prologue
    .line 527
    monitor-enter p0

    .line 528
    :try_start_1
    iget-object v3, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    if-nez v3, :cond_7

    .line 529
    monitor-exit p0

    .line 538
    :goto_6
    return-void

    .line 530
    :cond_7
    iget-object v3, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    array-length v0, v3

    .line 531
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, v0, :cond_21

    .line 532
    if-eqz p1, :cond_17

    iget-object v3, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    aget-object v3, v3, v1

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v3, p1, :cond_1e

    .line 533
    :cond_17
    iget-object v3, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v2, v3, v1

    .line 534
    .local v2, root:Landroid/view/ViewRootImpl;
    invoke-virtual {v2, p2}, Landroid/view/ViewRootImpl;->setStopped(Z)V

    .line 531
    .end local v2           #root:Landroid/view/ViewRootImpl;
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 537
    :cond_21
    monitor-exit p0

    goto :goto_6

    .end local v0           #count:I
    .end local v1           #i:I
    :catchall_23
    move-exception v3

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_23

    throw v3
.end method

.method public trimLocalMemory()V
    .registers 4

    .prologue
    .line 477
    monitor-enter p0

    .line 478
    :try_start_1
    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    if-nez v2, :cond_7

    monitor-exit p0

    .line 484
    :goto_6
    return-void

    .line 479
    :cond_7
    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    array-length v0, v2

    .line 480
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, v0, :cond_17

    .line 481
    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->destroyHardwareLayers()V

    .line 480
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 483
    :cond_17
    monitor-exit p0

    goto :goto_6

    .end local v0           #count:I
    .end local v1           #i:I
    :catchall_19
    move-exception v2

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_19

    throw v2
.end method

.method public trimMemory(I)V
    .registers 5
    .parameter "level"

    .prologue
    .line 445
    invoke-static {}, Landroid/view/HardwareRenderer;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 446
    sparse-switch p1, :sswitch_data_3c

    .line 468
    :cond_9
    invoke-static {p1}, Landroid/view/HardwareRenderer;->trimMemory(I)V

    .line 471
    :cond_c
    :goto_c
    return-void

    .line 450
    :sswitch_d
    invoke-virtual {p0}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManager;->isHighEndGfx(Landroid/view/Display;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 452
    const/16 v2, 0x50

    invoke-static {v2}, Landroid/view/HardwareRenderer;->trimMemory(I)V

    .line 455
    monitor-enter p0

    .line 456
    :try_start_1d
    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    if-nez v2, :cond_26

    monitor-exit p0

    goto :goto_c

    .line 461
    :catchall_23
    move-exception v2

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_23

    throw v2

    .line 457
    :cond_26
    :try_start_26
    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    array-length v0, v2

    .line 458
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2a
    if-ge v1, v0, :cond_36

    .line 459
    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->terminateHardwareResources()V

    .line 458
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 461
    :cond_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_26 .. :try_end_37} :catchall_23

    .line 463
    invoke-static {}, Landroid/opengl/ManagedEGLContext;->doTerminate()Z

    goto :goto_c

    .line 446
    nop

    :sswitch_data_3c
    .sparse-switch
        0x3c -> :sswitch_d
        0x50 -> :sswitch_d
    .end sparse-switch
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 8
    .parameter "view"
    .parameter "params"

    .prologue
    .line 317
    instance-of v3, p2, Landroid/view/WindowManager$LayoutParams;

    if-nez v3, :cond_c

    .line 318
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Params must be WindowManager.LayoutParams"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_c
    move-object v2, p2

    .line 321
    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 324
    .local v2, wparams:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    monitor-enter p0

    .line 327
    const/4 v3, 0x1

    :try_start_14
    invoke-direct {p0, p1, v3}, Landroid/view/WindowManagerImpl;->findViewLocked(Landroid/view/View;Z)I

    move-result v0

    .line 328
    .local v0, index:I
    iget-object v3, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v1, v3, v0

    .line 329
    .local v1, root:Landroid/view/ViewRootImpl;
    iget-object v3, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    aput-object v2, v3, v0

    .line 330
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewRootImpl;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V

    .line 331
    monitor-exit p0

    .line 332
    return-void

    .line 331
    .end local v0           #index:I
    .end local v1           #root:Landroid/view/ViewRootImpl;
    :catchall_26
    move-exception v3

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_14 .. :try_end_28} :catchall_26

    throw v3
.end method
