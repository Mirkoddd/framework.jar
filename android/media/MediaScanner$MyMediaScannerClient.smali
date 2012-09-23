.class Landroid/media/MediaScanner$MyMediaScannerClient;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Landroid/media/MediaScannerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyMediaScannerClient"
.end annotation


# instance fields
.field private isDrmConverted:Z

.field private isDrmFlag:Z

.field private mAlbum:Ljava/lang/String;

.field private mAlbumArtist:Ljava/lang/String;

.field private mArtist:Ljava/lang/String;

.field private mCompilation:I

.field private mComposer:Ljava/lang/String;

.field private mDrmPath:Ljava/lang/String;

.field private mDuration:I

.field private mFileSize:J

.field private mFileType:I

.field private mGenre:Ljava/lang/String;

.field private mHeight:I

.field private mIsDrm:Z

.field private mLastModified:J

.field private mMimeType:Ljava/lang/String;

.field private mNoMedia:Z

.field private mPath:Ljava/lang/String;

.field private mResolution:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTrack:I

.field private mWidth:I

.field private mWriter:Ljava/lang/String;

.field private mYear:I

.field final synthetic this$0:Landroid/media/MediaScanner;


# direct methods
.method private constructor <init>(Landroid/media/MediaScanner;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 490
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 509
    iput-boolean v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->isDrmConverted:Z

    .line 510
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmPath:Ljava/lang/String;

    .line 514
    iput-boolean v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->isDrmFlag:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaScanner;Landroid/media/MediaScanner$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 490
    invoke-direct {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;-><init>(Landroid/media/MediaScanner;)V

    return-void
.end method

.method private doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .parameter "path"
    .parameter "filename"

    .prologue
    const/4 v2, 0x0

    .line 1167
    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 1168
    .local v1, pathFilenameStart:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 1169
    .local v0, filenameLength:I
    invoke-virtual {p1, v1, p2, v2, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_1c

    add-int v3, v1, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_1c

    const/4 v2, 0x1

    :cond_1c
    return v2
.end method

.method private endFile(Landroid/media/MediaScanner$FileCacheEntry;ZZZZZ)Landroid/net/Uri;
    .registers 40
    .parameter "entry"
    .parameter "ringtones"
    .parameter "notifications"
    .parameter "alarms"
    .parameter "music"
    .parameter "podcasts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 903
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    move-object/from16 v28, v0

    if-eqz v28, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    if-nez v28, :cond_20

    .line 904
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 907
    :cond_20
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner$MyMediaScannerClient;->toValues()Landroid/content/ContentValues;

    move-result-object v27

    .line 908
    .local v27, values:Landroid/content/ContentValues;
    const-string/jumbo v28, "title"

    invoke-virtual/range {v27 .. v28}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 909
    .local v25, title:Ljava/lang/String;
    if-eqz v25, :cond_37

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_4d

    .line 910
    :cond_37
    const-string v28, "_data"

    invoke-virtual/range {v27 .. v28}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/media/MediaFile;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 911
    const-string/jumbo v28, "title"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    :cond_4d
    const-string v28, "album"

    invoke-virtual/range {v27 .. v28}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 914
    .local v5, album:Ljava/lang/String;
    const-string v28, "<unknown>"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_92

    .line 915
    const-string v28, "_data"

    invoke-virtual/range {v27 .. v28}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 917
    const/16 v28, 0x2f

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    .line 918
    .local v13, lastSlash:I
    if-ltz v13, :cond_92

    .line 919
    const/16 v17, 0x0

    .line 921
    .local v17, previousSlash:I
    :goto_6f
    const/16 v28, 0x2f

    add-int/lit8 v29, v17, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v11

    .line 922
    .local v11, idx:I
    if-ltz v11, :cond_7f

    if-lt v11, v13, :cond_144

    .line 927
    :cond_7f
    if-eqz v17, :cond_92

    .line 928
    add-int/lit8 v28, v17, 0x1

    move/from16 v0, v28

    invoke-virtual {v5, v0, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 929
    const-string v28, "album"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    .end local v11           #idx:I
    .end local v13           #lastSlash:I
    .end local v17           #previousSlash:I
    :cond_92
    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    move-wide/from16 v20, v0

    .line 934
    .local v20, rowId:J
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v28

    if-eqz v28, :cond_148

    const-wide/16 v28, 0x0

    cmp-long v28, v20, v28

    if-eqz v28, :cond_b6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v28, v0

    #getter for: Landroid/media/MediaScanner;->mMtpObjectHandle:I
    invoke-static/range {v28 .. v28}, Landroid/media/MediaScanner;->access$1300(Landroid/media/MediaScanner;)I

    move-result v28

    if-eqz v28, :cond_148

    .line 939
    :cond_b6
    const-string/jumbo v28, "is_ringtone"

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 940
    const-string/jumbo v28, "is_notification"

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 941
    const-string/jumbo v28, "is_alarm"

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 942
    const-string/jumbo v28, "is_music"

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 943
    const-string/jumbo v28, "is_podcast"

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1009
    :cond_e8
    :goto_e8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v28, v0

    #getter for: Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;
    invoke-static/range {v28 .. v28}, Landroid/media/MediaScanner;->access$1400(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v22

    .line 1010
    .local v22, tableUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v28, v0

    #getter for: Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;
    invoke-static/range {v28 .. v28}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;)Landroid/media/MediaInserter;

    move-result-object v12

    .line 1011
    .local v12, inserter:Landroid/media/MediaInserter;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v28, v0

    #getter for: Landroid/media/MediaScanner;->mMediaUpdater:Landroid/media/MediaUpdater;
    invoke-static/range {v28 .. v28}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)Landroid/media/MediaUpdater;

    move-result-object v26

    .line 1012
    .local v26, updater:Landroid/media/MediaUpdater;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    move/from16 v28, v0

    if-nez v28, :cond_124

    .line 1013
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v28

    if-eqz v28, :cond_200

    .line 1014
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v28, v0

    #getter for: Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;
    invoke-static/range {v28 .. v28}, Landroid/media/MediaScanner;->access$1700(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v22

    .line 1028
    :cond_124
    :goto_124
    const/16 v18, 0x0

    .line 1030
    .local v18, result:Landroid/net/Uri;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object/from16 v28, v0

    if-eqz v28, :cond_23e

    .line 1031
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1032
    .local v9, file:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v28

    if-nez v28, :cond_23e

    move-object/from16 v19, v18

    .line 1163
    .end local v9           #file:Ljava/io/File;
    .end local v18           #result:Landroid/net/Uri;
    .local v19, result:Landroid/net/Uri;
    :goto_143
    return-object v19

    .line 925
    .end local v12           #inserter:Landroid/media/MediaInserter;
    .end local v19           #result:Landroid/net/Uri;
    .end local v20           #rowId:J
    .end local v22           #tableUri:Landroid/net/Uri;
    .end local v26           #updater:Landroid/media/MediaUpdater;
    .restart local v11       #idx:I
    .restart local v13       #lastSlash:I
    .restart local v17       #previousSlash:I
    :cond_144
    move/from16 v17, v11

    .line 926
    goto/16 :goto_6f

    .line 955
    .end local v11           #idx:I
    .end local v13           #lastSlash:I
    .end local v17           #previousSlash:I
    .restart local v20       #rowId:J
    :cond_148
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v28, v0

    const/16 v29, 0x1f

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_e8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    move/from16 v28, v0

    if-nez v28, :cond_e8

    .line 956
    const/4 v7, 0x0

    .line 958
    .local v7, exif:Landroid/media/ExifInterface;
    :try_start_15f
    new-instance v8, Landroid/media/ExifInterface;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-direct {v8, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_16c
    .catch Ljava/io/IOException; {:try_start_15f .. :try_end_16c} :catch_556

    .end local v7           #exif:Landroid/media/ExifInterface;
    .local v8, exif:Landroid/media/ExifInterface;
    move-object v7, v8

    .line 962
    .end local v8           #exif:Landroid/media/ExifInterface;
    .restart local v7       #exif:Landroid/media/ExifInterface;
    :goto_16d
    if-eqz v7, :cond_e8

    .line 963
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v14, v0, [F

    .line 964
    .local v14, latlng:[F
    invoke-virtual {v7, v14}, Landroid/media/ExifInterface;->getLatLong([F)Z

    move-result v28

    if-eqz v28, :cond_197

    .line 965
    const-string/jumbo v28, "latitude"

    const/16 v29, 0x0

    aget v29, v14, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 966
    const-string/jumbo v28, "longitude"

    const/16 v29, 0x1

    aget v29, v14, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 969
    :cond_197
    invoke-virtual {v7}, Landroid/media/ExifInterface;->getGpsDateTime()J

    move-result-wide v23

    .line 970
    .local v23, time:J
    const-wide/16 v28, -0x1

    cmp-long v28, v23, v28

    if-eqz v28, :cond_1cc

    .line 971
    const-string v28, "datetaken"

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 985
    :cond_1aa
    :goto_1aa
    const-string v28, "Orientation"

    const/16 v29, -0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v7, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v15

    .line 987
    .local v15, orientation:I
    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v15, v0, :cond_e8

    .line 990
    packed-switch v15, :pswitch_data_55a

    .line 1001
    :pswitch_1bf
    const/4 v6, 0x0

    .line 1004
    .local v6, degree:I
    :goto_1c0
    const-string/jumbo v28, "orientation"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_e8

    .line 977
    .end local v6           #degree:I
    .end local v15           #orientation:I
    :cond_1cc
    invoke-virtual {v7}, Landroid/media/ExifInterface;->getDateTime()J

    move-result-wide v23

    .line 978
    const-wide/16 v28, -0x1

    cmp-long v28, v23, v28

    if-eqz v28, :cond_1aa

    .line 979
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x3e8

    mul-long v28, v28, v30

    sub-long v28, v28, v23

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->abs(J)J

    move-result-wide v28

    const-wide/32 v30, 0x5265c00

    cmp-long v28, v28, v30

    if-ltz v28, :cond_1aa

    .line 980
    const-string v28, "datetaken"

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1aa

    .line 992
    .restart local v15       #orientation:I
    :pswitch_1f7
    const/16 v6, 0x5a

    .line 993
    .restart local v6       #degree:I
    goto :goto_1c0

    .line 995
    .end local v6           #degree:I
    :pswitch_1fa
    const/16 v6, 0xb4

    .line 996
    .restart local v6       #degree:I
    goto :goto_1c0

    .line 998
    .end local v6           #degree:I
    :pswitch_1fd
    const/16 v6, 0x10e

    .line 999
    .restart local v6       #degree:I
    goto :goto_1c0

    .line 1015
    .end local v6           #degree:I
    .end local v7           #exif:Landroid/media/ExifInterface;
    .end local v14           #latlng:[F
    .end local v15           #orientation:I
    .end local v23           #time:J
    .restart local v12       #inserter:Landroid/media/MediaInserter;
    .restart local v22       #tableUri:Landroid/net/Uri;
    .restart local v26       #updater:Landroid/media/MediaUpdater;
    :cond_200
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v28

    if-eqz v28, :cond_218

    .line 1016
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v28, v0

    #getter for: Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;
    invoke-static/range {v28 .. v28}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v22

    goto/16 :goto_124

    .line 1017
    :cond_218
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v28

    if-eqz v28, :cond_230

    .line 1018
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v28, v0

    #getter for: Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;
    invoke-static/range {v28 .. v28}, Landroid/media/MediaScanner;->access$1900(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v22

    goto/16 :goto_124

    .line 1021
    :cond_230
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaFile;->isVideoCallImagesFileType(I)Z

    move-result v28

    if-eqz v28, :cond_124

    goto/16 :goto_124

    .line 1038
    .restart local v18       #result:Landroid/net/Uri;
    :cond_23e
    const-wide/16 v28, 0x0

    cmp-long v28, v20, v28

    if-nez v28, :cond_39c

    .line 1039
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v28, v0

    #getter for: Landroid/media/MediaScanner;->mMtpObjectHandle:I
    invoke-static/range {v28 .. v28}, Landroid/media/MediaScanner;->access$1300(Landroid/media/MediaScanner;)I

    move-result v28

    if-eqz v28, :cond_264

    .line 1040
    const-string/jumbo v28, "media_scanner_new_object_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v29, v0

    #getter for: Landroid/media/MediaScanner;->mMtpObjectHandle:I
    invoke-static/range {v29 .. v29}, Landroid/media/MediaScanner;->access$1300(Landroid/media/MediaScanner;)I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1042
    :cond_264
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v28, v0

    #getter for: Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;
    invoke-static/range {v28 .. v28}, Landroid/media/MediaScanner;->access$1400(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v28

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_293

    .line 1043
    move-object/from16 v0, p1

    iget v10, v0, Landroid/media/MediaScanner$FileCacheEntry;->mFormat:I

    .line 1044
    .local v10, format:I
    if-nez v10, :cond_28a

    .line 1045
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v28 .. v29}, Landroid/media/MediaFile;->getFormatCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 1047
    :cond_28a
    const-string v28, "format"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1054
    .end local v10           #format:I
    :cond_293
    if-eqz v12, :cond_2a3

    move-object/from16 v0, p1

    iget v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mFormat:I

    move/from16 v28, v0

    const/16 v29, 0x3001

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_368

    .line 1055
    :cond_2a3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v28, v0

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static/range {v28 .. v28}, Landroid/media/MediaScanner;->access$2000(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v18

    .line 1067
    :goto_2b7
    if-eqz v18, :cond_2c3

    .line 1068
    invoke-static/range {v18 .. v18}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v20

    .line 1069
    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    iput-wide v0, v2, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    .line 1086
    :cond_2c3
    :goto_2c3
    if-eqz p3, :cond_3d5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v28, v0

    #getter for: Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z
    invoke-static/range {v28 .. v28}, Landroid/media/MediaScanner;->access$2200(Landroid/media/MediaScanner;)Z

    move-result v28

    if-eqz v28, :cond_3d5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v28, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultNotificationSet:Z
    invoke-static/range {v28 .. v28}, Landroid/media/MediaScanner;->access$2300(Landroid/media/MediaScanner;)Z

    move-result v28

    if-nez v28, :cond_3d5

    .line 1087
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v28, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Landroid/media/MediaScanner;->access$2400(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_309

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v29, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Landroid/media/MediaScanner;->access$2400(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_364

    .line 1090
    :cond_309
    const-string v28, "MediaScanner"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "MediaScanner is going to setup default notification  "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "   "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v30, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Landroid/media/MediaScanner;->access$2400(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "  LastModified : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mLastModified:J

    move-wide/from16 v30, v0

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    const-string/jumbo v28, "notification_sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v22

    move-wide/from16 v3, v20

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1113
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    #setter for: Landroid/media/MediaScanner;->mDefaultNotificationSet:Z
    invoke-static/range {v28 .. v29}, Landroid/media/MediaScanner;->access$2302(Landroid/media/MediaScanner;Z)Z

    :cond_364
    :goto_364
    move-object/from16 v19, v18

    .line 1163
    .end local v18           #result:Landroid/net/Uri;
    .restart local v19       #result:Landroid/net/Uri;
    goto/16 :goto_143

    .line 1057
    .end local v19           #result:Landroid/net/Uri;
    .restart local v18       #result:Landroid/net/Uri;
    :cond_368
    sget-boolean v28, Landroid/media/MediaScanner;->bIsExternalSDCardEjected:Z

    if-eqz v28, :cond_393

    .line 1058
    const-string v28, "_data"

    invoke-virtual/range {v27 .. v28}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1059
    .local v16, path:Ljava/lang/String;
    if-eqz v16, :cond_393

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v28, v0

    #getter for: Landroid/media/MediaScanner;->mExternalStorageSdPath:Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Landroid/media/MediaScanner;->access$2100(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_393

    .line 1060
    const-string v28, "MediaScanner"

    const-string v29, "External SD card is ejected! skip it"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v19, v18

    .line 1061
    .end local v18           #result:Landroid/net/Uri;
    .restart local v19       #result:Landroid/net/Uri;
    goto/16 :goto_143

    .line 1064
    .end local v16           #path:Ljava/lang/String;
    .end local v19           #result:Landroid/net/Uri;
    .restart local v18       #result:Landroid/net/Uri;
    :cond_393
    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v12, v0, v1}, Landroid/media/MediaInserter;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto/16 :goto_2b7

    .line 1073
    :cond_39c
    move-object/from16 v0, v22

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    .line 1076
    const-string v28, "_data"

    invoke-virtual/range {v27 .. v28}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1078
    sget-boolean v28, Landroid/media/MediaScanner;->bIsUpdatingAudioMetadata:Z

    if-eqz v28, :cond_3b8

    .line 1079
    move-object/from16 v0, v26

    move-object/from16 v1, v18

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaUpdater;->update(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto/16 :goto_2c3

    .line 1081
    :cond_3b8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v28, v0

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static/range {v28 .. v28}, Landroid/media/MediaScanner;->access$2000(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    move-object/from16 v2, v27

    move-object/from16 v3, v29

    move-object/from16 v4, v30

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_2c3

    .line 1115
    :cond_3d5
    if-eqz p2, :cond_4b4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v28, v0

    #getter for: Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z
    invoke-static/range {v28 .. v28}, Landroid/media/MediaScanner;->access$2200(Landroid/media/MediaScanner;)Z

    move-result v28

    if-eqz v28, :cond_4b4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v28, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z
    invoke-static/range {v28 .. v28}, Landroid/media/MediaScanner;->access$2500(Landroid/media/MediaScanner;)Z

    move-result v28

    if-nez v28, :cond_4b4

    .line 1116
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v28, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Landroid/media/MediaScanner;->access$2600(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_41b

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v29, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Landroid/media/MediaScanner;->access$2600(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_364

    .line 1119
    :cond_41b
    const-string v28, "MediaScanner"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "MediaScanner is going to setup default ringtone  "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "   "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v30, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Landroid/media/MediaScanner;->access$2600(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "  LastModified : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mLastModified:J

    move-wide/from16 v30, v0

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v28, v0

    #getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static/range {v28 .. v28}, Landroid/media/MediaScanner;->access$2700(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "DEBUG_RINGTONE_MEDIASCANNER_LASTMODIFIED"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Current:  "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mLastModified:J

    move-wide/from16 v31, v0

    invoke-virtual/range {v30 .. v32}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "   "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1121
    const-string/jumbo v28, "ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v22

    move-wide/from16 v3, v20

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1151
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    #setter for: Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z
    invoke-static/range {v28 .. v29}, Landroid/media/MediaScanner;->access$2502(Landroid/media/MediaScanner;Z)Z

    goto/16 :goto_364

    .line 1153
    :cond_4b4
    if-eqz p4, :cond_364

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v28, v0

    #getter for: Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z
    invoke-static/range {v28 .. v28}, Landroid/media/MediaScanner;->access$2200(Landroid/media/MediaScanner;)Z

    move-result v28

    if-eqz v28, :cond_364

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v28, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultAlarmSet:Z
    invoke-static/range {v28 .. v28}, Landroid/media/MediaScanner;->access$2800(Landroid/media/MediaScanner;)Z

    move-result v28

    if-nez v28, :cond_364

    .line 1154
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v28, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Landroid/media/MediaScanner;->access$2900(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_4fa

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v29, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Landroid/media/MediaScanner;->access$2900(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_364

    .line 1157
    :cond_4fa
    const-string v28, "MediaScanner"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "MediaScanner is going to setup default alarm  "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "   "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v30, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Landroid/media/MediaScanner;->access$2900(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "  LastModified : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mLastModified:J

    move-wide/from16 v30, v0

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    const-string v28, "alarm_alert"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v22

    move-wide/from16 v3, v20

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1159
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    #setter for: Landroid/media/MediaScanner;->mDefaultAlarmSet:Z
    invoke-static/range {v28 .. v29}, Landroid/media/MediaScanner;->access$2802(Landroid/media/MediaScanner;Z)Z

    goto/16 :goto_364

    .line 959
    .end local v12           #inserter:Landroid/media/MediaInserter;
    .end local v18           #result:Landroid/net/Uri;
    .end local v22           #tableUri:Landroid/net/Uri;
    .end local v26           #updater:Landroid/media/MediaUpdater;
    .restart local v7       #exif:Landroid/media/ExifInterface;
    :catch_556
    move-exception v28

    goto/16 :goto_16d

    .line 990
    nop

    :pswitch_data_55a
    .packed-switch 0x3
        :pswitch_1fa
        :pswitch_1bf
        :pswitch_1bf
        :pswitch_1f7
        :pswitch_1bf
        :pswitch_1fd
    .end packed-switch
.end method

.method private getFileTypeFromDrm(Ljava/lang/String;)I
    .registers 18
    .parameter "path"

    .prologue
    .line 1192
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #calls: Landroid/media/MediaScanner;->isDrmEnabled()Z
    invoke-static {v14}, Landroid/media/MediaScanner;->access$200(Landroid/media/MediaScanner;)Z

    move-result v14

    if-nez v14, :cond_c

    .line 1195
    const/4 v11, 0x0

    .line 1297
    :cond_b
    :goto_b
    return v11

    .line 1199
    :cond_c
    const/4 v11, 0x0

    .line 1203
    .local v11, resultFileType:I
    const-string v14, ".dcf"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    .line 1204
    .local v7, isDCF:Z
    const-string v14, ".dm"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    .line 1205
    .local v8, isDM:Z
    const-string v14, ".odf"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    .line 1207
    .local v9, isODF:Z
    new-instance v5, Landroid/drm/DrmManagerClient;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v14}, Landroid/media/MediaScanner;->access$2700(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v14

    invoke-direct {v5, v14}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 1208
    .local v5, drmclient:Landroid/drm/DrmManagerClient;
    if-nez v5, :cond_36

    .line 1211
    const/4 v11, -0x1

    goto :goto_b

    .line 1214
    :cond_36
    if-eqz v8, :cond_a7

    .line 1217
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/4 v14, 0x7

    const-string v15, "application/vnd.oma.drm.content"

    invoke-direct {v2, v14, v15}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 1218
    .local v2, drmInfoRequest_convert:Landroid/drm/DrmInfoRequest;
    const-string v14, "drm_path"

    move-object/from16 v0, p1

    invoke-virtual {v2, v14, v0}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1219
    const-string/jumbo v14, "status"

    const-string v15, "fail"

    invoke-virtual {v2, v14, v15}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1222
    invoke-virtual {v5, v2}, Landroid/drm/DrmManagerClient;->processDrmRequest(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v1

    .line 1223
    .local v1, drmInfo:Landroid/drm/DrmInfo;
    if-eqz v1, :cond_5e

    const-string/jumbo v14, "status"

    invoke-virtual {v1, v14}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_6b

    .line 1224
    :cond_5e
    const-string v14, "MediaScanner"

    const-string v15, "::getDrmFileType() DrmInfoRequest.STATUS have NoV"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    invoke-virtual {v5}, Landroid/drm/DrmManagerClient;->deInitialize()V

    .line 1226
    const/4 v5, 0x0

    .line 1227
    const/4 v11, -0x1

    goto :goto_b

    .line 1229
    :cond_6b
    const-string/jumbo v14, "status"

    invoke-virtual {v1, v14}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1233
    .local v12, status_req1:Ljava/lang/String;
    const-string/jumbo v14, "success"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f0

    .line 1244
    const-string v14, "drm_path"

    invoke-virtual {v1, v14}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 1245
    .local v10, pathname_dest:Ljava/lang/Object;
    if-eqz v10, :cond_fe

    .line 1248
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1249
    .local v6, file2:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1250
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1251
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->isDrmConverted:Z

    .line 1252
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmPath:Ljava/lang/String;

    .line 1253
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->isDrmFlag:Z

    .line 1262
    .end local v1           #drmInfo:Landroid/drm/DrmInfo;
    .end local v2           #drmInfoRequest_convert:Landroid/drm/DrmInfoRequest;
    .end local v6           #file2:Ljava/io/File;
    .end local v10           #pathname_dest:Ljava/lang/Object;
    .end local v12           #status_req1:Ljava/lang/String;
    :cond_a7
    :goto_a7
    new-instance v3, Landroid/drm/DrmInfoRequest;

    const/16 v14, 0x8

    const-string v15, "application/vnd.oma.drm.content"

    invoke-direct {v3, v14, v15}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 1263
    .local v3, drmInfoRequest_register:Landroid/drm/DrmInfoRequest;
    const-string v14, "drm_path"

    move-object/from16 v0, p1

    invoke-virtual {v3, v14, v0}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1264
    invoke-virtual {v5, v3}, Landroid/drm/DrmManagerClient;->processDrmRequest(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v1

    .line 1265
    .restart local v1       #drmInfo:Landroid/drm/DrmInfo;
    const-string/jumbo v14, "status"

    invoke-virtual {v1, v14}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1267
    .local v13, status_req2:Ljava/lang/String;
    const-string/jumbo v14, "success"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_cf

    .line 1283
    :cond_cf
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v14}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e8

    .line 1284
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1285
    .local v4, drmMimetype:Ljava/lang/String;
    if-eqz v4, :cond_e8

    .line 1286
    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 1287
    invoke-static {v4}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v11

    .line 1291
    .end local v4           #drmMimetype:Ljava/lang/String;
    :cond_e8
    if-eqz v5, :cond_b

    .line 1294
    invoke-virtual {v5}, Landroid/drm/DrmManagerClient;->deInitialize()V

    .line 1295
    const/4 v5, 0x0

    goto/16 :goto_b

    .line 1238
    .end local v3           #drmInfoRequest_register:Landroid/drm/DrmInfoRequest;
    .end local v13           #status_req2:Ljava/lang/String;
    .restart local v2       #drmInfoRequest_convert:Landroid/drm/DrmInfoRequest;
    .restart local v12       #status_req1:Ljava/lang/String;
    :cond_f0
    const-string v14, "MediaScanner"

    const-string v15, "Mediascanner::getFileTypeFromDrm :: processdrmRequest Fail"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    invoke-virtual {v5}, Landroid/drm/DrmManagerClient;->deInitialize()V

    .line 1240
    const/4 v5, 0x0

    .line 1241
    const/4 v11, -0x1

    goto/16 :goto_b

    .line 1258
    .restart local v10       #pathname_dest:Ljava/lang/Object;
    :cond_fe
    const-string v14, "MediaScanner"

    const-string v15, "Mediascanner::getFileTypeFromDrm :: processdrmRequest_convert no file path"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a7
.end method

.method private parseSubstring(Ljava/lang/String;II)I
    .registers 12
    .parameter "s"
    .parameter "start"
    .parameter "defaultValue"

    .prologue
    const/16 v7, 0x39

    const/16 v6, 0x30

    .line 688
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 689
    .local v1, length:I
    if-ne p2, v1, :cond_b

    .line 702
    .end local p3
    :goto_a
    return p3

    .line 691
    .restart local p3
    :cond_b
    add-int/lit8 v3, p2, 0x1

    .end local p2
    .local v3, start:I
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 693
    .local v0, ch:C
    if-lt v0, v6, :cond_15

    if-le v0, v7, :cond_17

    :cond_15
    move p2, v3

    .end local v3           #start:I
    .restart local p2
    goto :goto_a

    .line 695
    .end local p2
    .restart local v3       #start:I
    :cond_17
    add-int/lit8 v2, v0, -0x30

    .line 696
    .local v2, result:I
    :goto_19
    if-ge v3, v1, :cond_2f

    .line 697
    add-int/lit8 p2, v3, 0x1

    .end local v3           #start:I
    .restart local p2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 698
    if-lt v0, v6, :cond_25

    if-le v0, v7, :cond_27

    :cond_25
    move p3, v2

    goto :goto_a

    .line 699
    :cond_27
    mul-int/lit8 v4, v2, 0xa

    add-int/lit8 v5, v0, -0x30

    add-int v2, v4, v5

    move v3, p2

    .end local p2
    .restart local v3       #start:I
    goto :goto_19

    :cond_2f
    move p2, v3

    .end local v3           #start:I
    .restart local p2
    move p3, v2

    .line 702
    goto :goto_a
.end method

.method private processImageFile(Ljava/lang/String;)V
    .registers 5
    .parameter "path"

    .prologue
    .line 796
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 797
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 800
    const-string v1, ".dcf"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 801
    .local v0, isDCF:Z
    if-eqz v0, :cond_41

    .line 802
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->isPreview:Z

    .line 811
    :goto_23
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 812
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    .line 813
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    .line 817
    .end local v0           #isDCF:Z
    :goto_40
    return-void

    .line 805
    .restart local v0       #isDCF:Z
    :cond_41
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->isPreview:Z
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_4a} :catch_4b

    goto :goto_23

    .line 814
    .end local v0           #isDCF:Z
    :catch_4b
    move-exception v1

    goto :goto_40
.end method

.method private setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V
    .registers 10
    .parameter "settingName"
    .parameter "uri"
    .parameter "rowId"

    .prologue
    .line 1175
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$2700(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1178
    .local v0, existingSettingValue:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 1180
    const-string v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "it has setupped : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$2700(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1184
    const-string/jumbo v1, "ringtone"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 1185
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$2700(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "DEBUG_RINGTONE_MEDIASCANNER"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MediaScanner : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1187
    :cond_75
    return-void
.end method

.method private toValues()Landroid/content/ContentValues;
    .registers 6

    .prologue
    .line 838
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 840
    .local v0, map:Landroid/content/ContentValues;
    const-string v2, "_data"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    const-string/jumbo v2, "title"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    const-string v2, "date_modified"

    iget-wide v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 843
    const-string v2, "_size"

    iget-wide v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 844
    const-string/jumbo v2, "mime_type"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    const-string/jumbo v2, "is_drm"

    iget-boolean v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 847
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    if-lez v2, :cond_5d

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    if-lez v2, :cond_5d

    .line 848
    const-string/jumbo v2, "width"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 849
    const-string v2, "height"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 852
    :cond_5d
    iget-boolean v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v2, :cond_b0

    .line 853
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v2}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v2

    if-eqz v2, :cond_b7

    .line 854
    const-string v3, "artist"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v2, :cond_b1

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_b1

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    :goto_79
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    const-string v3, "album"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v2, :cond_b4

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_b4

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    :goto_8c
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    const-string v2, "duration"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 860
    const-string v1, "0x0"

    .line 861
    .local v1, sUnknownResolution:Ljava/lang/String;
    const-string/jumbo v2, "resolution"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mResolution:Ljava/lang/String;

    if-eqz v3, :cond_ad

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mResolution:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_ad

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mResolution:Ljava/lang/String;

    .end local v1           #sUnknownResolution:Ljava/lang/String;
    :cond_ad
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    :cond_b0
    :goto_b0
    return-object v0

    .line 854
    :cond_b1
    const-string v2, "<unknown>"

    goto :goto_79

    .line 856
    :cond_b4
    const-string v2, "<unknown>"

    goto :goto_8c

    .line 865
    :cond_b7
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v2}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v2

    if-nez v2, :cond_b0

    .line 867
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v2}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 868
    const-string v3, "artist"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v2, :cond_142

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_142

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    :goto_d7
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    const-string v3, "album_artist"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    if-eqz v2, :cond_145

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_145

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    :goto_ea
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    const-string v3, "album"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v2, :cond_147

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_147

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    :goto_fd
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    const-string v2, "composer"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    const-string v2, "genre"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    if-eqz v2, :cond_11e

    .line 877
    const-string/jumbo v2, "year"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 889
    :cond_11e
    const-string/jumbo v2, "track"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 890
    const-string v2, "duration"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 891
    const-string v2, "compilation"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_b0

    .line 868
    :cond_142
    const-string v2, "<unknown>"

    goto :goto_d7

    .line 870
    :cond_145
    const/4 v2, 0x0

    goto :goto_ea

    .line 872
    :cond_147
    const-string v2, "<unknown>"

    goto :goto_fd
.end method


# virtual methods
.method public beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/media/MediaScanner$FileCacheEntry;
    .registers 23
    .parameter "path"
    .parameter "mimeType"
    .parameter "lastModified"
    .parameter "fileSize"
    .parameter "isDirectory"
    .parameter "noMedia"

    .prologue
    .line 530
    move-object/from16 v0, p2

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 531
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 532
    move-wide/from16 v0, p5

    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    .line 534
    if-nez p7, :cond_59

    .line 535
    if-nez p8, :cond_17

    #calls: Landroid/media/MediaScanner;->isNoMediaFile(Ljava/lang/String;)Z
    invoke-static {p1}, Landroid/media/MediaScanner;->access$100(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 536
    const/16 p8, 0x1

    .line 538
    :cond_17
    move/from16 v0, p8

    iput-boolean v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    .line 541
    if-eqz p2, :cond_23

    .line 542
    invoke-static/range {p2 .. p2}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 546
    :cond_23
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    if-nez v3, :cond_39

    .line 547
    invoke-static {p1}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v12

    .line 548
    .local v12, mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-eqz v12, :cond_39

    .line 549
    iget v3, v12, Landroid/media/MediaFile$MediaFileType;->fileType:I

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 550
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    if-nez v3, :cond_39

    .line 551
    iget-object v3, v12, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 556
    .end local v12           #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    :cond_39
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #calls: Landroid/media/MediaScanner;->isDrmEnabled()Z
    invoke-static {v3}, Landroid/media/MediaScanner;->access$200(Landroid/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_4f

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isDrmFileType(I)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 557
    invoke-direct {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->getFileTypeFromDrm(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 561
    :cond_4f
    iget-boolean v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->isDrmConverted:Z

    if-eqz v3, :cond_59

    .line 564
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmPath:Ljava/lang/String;

    if-eqz v3, :cond_59

    .line 565
    iget-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmPath:Ljava/lang/String;

    .line 573
    :cond_59
    move-object v11, p1

    .line 574
    .local v11, key:Ljava/lang/String;
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z
    invoke-static {v3}, Landroid/media/MediaScanner;->access$300(Landroid/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 575
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    .line 577
    :cond_66
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/MediaScanner;->access$400(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaScanner$FileCacheEntry;

    .line 579
    .local v2, entry:Landroid/media/MediaScanner$FileCacheEntry;
    if-eqz v2, :cond_b0

    iget-wide v3, v2, Landroid/media/MediaScanner$FileCacheEntry;->mLastModified:J

    sub-long v9, p3, v3

    .line 580
    .local v9, delta:J
    :goto_78
    const-wide/16 v3, 0x1

    cmp-long v3, v9, v3

    if-gtz v3, :cond_84

    const-wide/16 v3, -0x1

    cmp-long v3, v9, v3

    if-gez v3, :cond_b3

    :cond_84
    const/4 v13, 0x1

    .line 581
    .local v13, wasModified:Z
    :goto_85
    if-eqz v2, :cond_89

    if-eqz v13, :cond_92

    .line 582
    :cond_89
    if-eqz v13, :cond_b5

    .line 583
    move-wide/from16 v0, p3

    iput-wide v0, v2, Landroid/media/MediaScanner$FileCacheEntry;->mLastModified:J

    .line 589
    :goto_8f
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/media/MediaScanner$FileCacheEntry;->mLastModifiedChanged:Z

    .line 591
    :cond_92
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/media/MediaScanner$FileCacheEntry;->mSeenInFileSystem:Z

    .line 593
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mProcessPlaylists:Z
    invoke-static {v3}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_cf

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v3

    if-eqz v3, :cond_cf

    .line 594
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/MediaScanner;->access$600(Landroid/media/MediaScanner;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 596
    const/4 v2, 0x0

    .line 620
    .end local v2           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    :goto_af
    return-object v2

    .line 579
    .end local v9           #delta:J
    .end local v13           #wasModified:Z
    .restart local v2       #entry:Landroid/media/MediaScanner$FileCacheEntry;
    :cond_b0
    const-wide/16 v9, 0x0

    goto :goto_78

    .line 580
    .restart local v9       #delta:J
    :cond_b3
    const/4 v13, 0x0

    goto :goto_85

    .line 585
    .restart local v13       #wasModified:Z
    :cond_b5
    new-instance v2, Landroid/media/MediaScanner$FileCacheEntry;

    .end local v2           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    const-wide/16 v3, 0x0

    if-eqz p7, :cond_cd

    const/16 v8, 0x3001

    :goto_bd
    move-object v5, p1

    move-wide/from16 v6, p3

    invoke-direct/range {v2 .. v8}, Landroid/media/MediaScanner$FileCacheEntry;-><init>(JLjava/lang/String;JI)V

    .line 587
    .restart local v2       #entry:Landroid/media/MediaScanner$FileCacheEntry;
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/MediaScanner;->access$400(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8f

    .line 585
    .end local v2           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    :cond_cd
    const/4 v8, 0x0

    goto :goto_bd

    .line 600
    .restart local v2       #entry:Landroid/media/MediaScanner$FileCacheEntry;
    :cond_cf
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 601
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    .line 602
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    .line 603
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    .line 604
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    .line 605
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    .line 606
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    .line 607
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    .line 608
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    .line 609
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    .line 610
    move-wide/from16 v0, p3

    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    .line 611
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    .line 612
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    .line 614
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mResolution:Ljava/lang/String;

    .line 616
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    .line 617
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    .line 618
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    goto :goto_af
.end method

.method public doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    .registers 23
    .parameter "path"
    .parameter "mimeType"
    .parameter "lastModified"
    .parameter "fileSize"
    .parameter "isDirectory"
    .parameter "scanAlways"
    .parameter "noMedia"

    .prologue
    .line 633
    const/4 v12, 0x0

    .local v12, result:Landroid/net/Uri;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p9

    .line 636
    :try_start_c
    invoke-virtual/range {v0 .. v8}, Landroid/media/MediaScanner$MyMediaScannerClient;->beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/media/MediaScanner$FileCacheEntry;

    move-result-object v1

    .line 639
    .local v1, entry:Landroid/media/MediaScanner$FileCacheEntry;
    iget-boolean v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->isDrmConverted:Z

    if-eqz v0, :cond_1c

    .line 640
    iget-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmPath:Ljava/lang/String;

    .line 643
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->isDrmConverted:Z

    .line 644
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmPath:Ljava/lang/String;

    .line 647
    :cond_1c
    if-eqz v1, :cond_30

    iget-boolean v0, v1, Landroid/media/MediaScanner$FileCacheEntry;->mLastModifiedChanged:Z

    if-nez v0, :cond_24

    if-eqz p8, :cond_30

    .line 648
    :cond_24
    if-eqz p9, :cond_31

    .line 649
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/media/MediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MediaScanner$FileCacheEntry;ZZZZZ)Landroid/net/Uri;

    move-result-object v12

    .line 684
    .end local v1           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    :cond_30
    :goto_30
    return-object v12

    .line 651
    .restart local v1       #entry:Landroid/media/MediaScanner$FileCacheEntry;
    :cond_31
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    .line 652
    .local v11, lowpath:Ljava/lang/String;
    const-string v0, "/ringtones/"

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_ac

    const/4 v2, 0x1

    .line 653
    .local v2, ringtones:Z
    :goto_3e
    const-string v0, "/notifications/"

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_ae

    const/4 v3, 0x1

    .line 654
    .local v3, notifications:Z
    :goto_47
    const-string v0, "/alarms/"

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_b0

    const/4 v4, 0x1

    .line 655
    .local v4, alarms:Z
    :goto_50
    const-string v0, "/podcasts/"

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_b2

    const/4 v6, 0x1

    .line 656
    .local v6, podcasts:Z
    :goto_59
    const-string v0, "/music/"

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_69

    if-nez v2, :cond_b4

    if-nez v3, :cond_b4

    if-nez v4, :cond_b4

    if-nez v6, :cond_b4

    :cond_69
    const/4 v5, 0x1

    .line 660
    .local v5, music:Z
    :goto_6a
    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v0}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v0

    if-nez v0, :cond_7a

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v0}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 663
    :cond_7a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 664
    .local v9, beforeMetaParsingTime:J
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #calls: Landroid/media/MediaScanner;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    invoke-static {v0, p1, p2, p0}, Landroid/media/MediaScanner;->access$700(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 665
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v9

    invoke-static {v0, v7, v8}, Landroid/media/MediaScanner;->access$814(Landroid/media/MediaScanner;J)J

    .line 668
    .end local v9           #beforeMetaParsingTime:J
    :cond_8d
    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v0}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 670
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 671
    .restart local v9       #beforeMetaParsingTime:J
    invoke-direct {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->processImageFile(Ljava/lang/String;)V

    .line 672
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v9

    invoke-static {v0, v7, v8}, Landroid/media/MediaScanner;->access$914(Landroid/media/MediaScanner;J)J

    .end local v9           #beforeMetaParsingTime:J
    :cond_a6
    move-object v0, p0

    .line 675
    invoke-direct/range {v0 .. v6}, Landroid/media/MediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MediaScanner$FileCacheEntry;ZZZZZ)Landroid/net/Uri;
    :try_end_aa
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_aa} :catch_b6

    move-result-object v12

    goto :goto_30

    .line 652
    .end local v2           #ringtones:Z
    .end local v3           #notifications:Z
    .end local v4           #alarms:Z
    .end local v5           #music:Z
    .end local v6           #podcasts:Z
    :cond_ac
    const/4 v2, 0x0

    goto :goto_3e

    .line 653
    .restart local v2       #ringtones:Z
    :cond_ae
    const/4 v3, 0x0

    goto :goto_47

    .line 654
    .restart local v3       #notifications:Z
    :cond_b0
    const/4 v4, 0x0

    goto :goto_50

    .line 655
    .restart local v4       #alarms:Z
    :cond_b2
    const/4 v6, 0x0

    goto :goto_59

    .line 656
    .restart local v6       #podcasts:Z
    :cond_b4
    const/4 v5, 0x0

    goto :goto_6a

    .line 678
    .end local v1           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v2           #ringtones:Z
    .end local v3           #notifications:Z
    .end local v4           #alarms:Z
    .end local v6           #podcasts:Z
    .end local v11           #lowpath:Ljava/lang/String;
    :catch_b6
    move-exception v0

    goto/16 :goto_30
.end method

.method public getGenreName(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "genreTagValue"

    .prologue
    const/4 v5, 0x0

    const/16 v8, 0xff

    .line 753
    if-nez p1, :cond_7

    move-object p1, v5

    .line 791
    .end local p1
    :cond_6
    :goto_6
    return-object p1

    .line 756
    .restart local p1
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 758
    .local v3, length:I
    if-lez v3, :cond_6

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x28

    if-ne v6, v7, :cond_6

    .line 759
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 760
    .local v4, number:Ljava/lang/StringBuffer;
    const/4 v2, 0x1

    .line 761
    .local v2, i:I
    :goto_1c
    add-int/lit8 v6, v3, -0x1

    if-ge v2, v6, :cond_30

    .line 762
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 763
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 764
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 761
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 769
    .end local v0           #c:C
    :cond_30
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x29

    if-ne v6, v7, :cond_6

    .line 771
    :try_start_38
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    .line 772
    .local v1, genreIndex:S
    if-ltz v1, :cond_6

    .line 773
    invoke-static {}, Landroid/media/MediaScanner;->access$1100()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-ge v1, v6, :cond_50

    .line 774
    invoke-static {}, Landroid/media/MediaScanner;->access$1100()[Ljava/lang/String;

    move-result-object v5

    aget-object p1, v5, v1

    goto :goto_6

    .line 775
    :cond_50
    if-ne v1, v8, :cond_54

    move-object p1, v5

    .line 776
    goto :goto_6

    .line 777
    :cond_54
    if-ge v1, v8, :cond_61

    add-int/lit8 v5, v2, 0x1

    if-ge v5, v3, :cond_61

    .line 780
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    .line 783
    :cond_61
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_64
    .catch Ljava/lang/NumberFormatException; {:try_start_38 .. :try_end_64} :catch_66

    move-result-object p1

    goto :goto_6

    .line 786
    .end local v1           #genreIndex:S
    :catch_66
    move-exception v5

    goto :goto_6
.end method

.method public handleStringTag(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 706
    const-string/jumbo v3, "title"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string/jumbo v3, "title;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 710
    :cond_14
    iput-object p2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    .line 749
    :cond_16
    :goto_16
    return-void

    .line 711
    :cond_17
    const-string v3, "artist"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_27

    const-string v3, "artist;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 712
    :cond_27
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    goto :goto_16

    .line 713
    :cond_2e
    const-string v3, "albumartist"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4e

    const-string v3, "albumartist;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4e

    const-string v3, "band"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4e

    const-string v3, "band;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 715
    :cond_4e
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    goto :goto_16

    .line 716
    :cond_55
    const-string v3, "album"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_65

    const-string v3, "album;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 717
    :cond_65
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    goto :goto_16

    .line 718
    :cond_6c
    const-string v3, "composer"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7c

    const-string v3, "composer;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_83

    .line 719
    :cond_7c
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    goto :goto_16

    .line 720
    :cond_83
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mProcessGenres:Z
    invoke-static {v3}, Landroid/media/MediaScanner;->access$1000(Landroid/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_a3

    const-string v3, "genre"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9b

    const-string v3, "genre;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 722
    :cond_9b
    invoke-virtual {p0, p2}, Landroid/media/MediaScanner$MyMediaScannerClient;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    goto/16 :goto_16

    .line 723
    :cond_a3
    const-string/jumbo v3, "year"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b5

    const-string/jumbo v3, "year;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_bd

    .line 724
    :cond_b5
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    goto/16 :goto_16

    .line 725
    :cond_bd
    const-string/jumbo v3, "tracknumber"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_cf

    const-string/jumbo v3, "tracknumber;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_de

    .line 728
    :cond_cf
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    .line 729
    .local v0, num:I
    iget v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    div-int/lit16 v1, v1, 0x3e8

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v1, v0

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    goto/16 :goto_16

    .line 730
    .end local v0           #num:I
    :cond_de
    const-string v3, "discnumber"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f8

    const-string/jumbo v3, "set"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f8

    const-string/jumbo v3, "set;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_107

    .line 734
    :cond_f8
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    .line 735
    .restart local v0       #num:I
    mul-int/lit16 v1, v0, 0x3e8

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    rem-int/lit16 v2, v2, 0x3e8

    add-int/2addr v1, v2

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    goto/16 :goto_16

    .line 736
    .end local v0           #num:I
    :cond_107
    const-string v3, "duration"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_117

    .line 737
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    goto/16 :goto_16

    .line 738
    :cond_117
    const-string/jumbo v3, "writer"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_129

    const-string/jumbo v3, "writer;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_131

    .line 739
    :cond_129
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    goto/16 :goto_16

    .line 741
    :cond_131
    const-string/jumbo v3, "resolution"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_143

    const-string/jumbo v3, "resolution"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14b

    .line 742
    :cond_143
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mResolution:Ljava/lang/String;

    goto/16 :goto_16

    .line 744
    :cond_14b
    const-string v3, "compilation"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15b

    .line 745
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    goto/16 :goto_16

    .line 746
    :cond_15b
    const-string/jumbo v3, "isdrm"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 747
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_16e

    :goto_16a
    iput-boolean v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    goto/16 :goto_16

    :cond_16e
    move v1, v2

    goto :goto_16a
.end method

.method public scanFile(Ljava/lang/String;JJZZ)V
    .registers 18
    .parameter "path"
    .parameter "lastModified"
    .parameter "fileSize"
    .parameter "isDirectory"
    .parameter "noMedia"

    .prologue
    .line 628
    const/4 v2, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    move/from16 v7, p6

    move/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;

    .line 629
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .registers 4
    .parameter "mimeType"

    .prologue
    .line 820
    const-string v0, "audio/mp4"

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string/jumbo v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 829
    :goto_13
    return-void

    .line 827
    :cond_14
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 828
    invoke-static {p1}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    goto :goto_13
.end method
