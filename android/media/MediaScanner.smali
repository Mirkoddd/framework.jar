.class public Landroid/media/MediaScanner;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaScanner$1;,
        Landroid/media/MediaScanner$WplHandler;,
        Landroid/media/MediaScanner$MyMediaScannerClient;,
        Landroid/media/MediaScanner$FileCacheEntry;
    }
.end annotation


# static fields
.field private static final ALARMS_DIR:Ljava/lang/String; = "/alarms/"

.field private static final AUDIO_MP3:Ljava/lang/String; = "audio/mp3"

.field private static final AUDIO_MPEG3:Ljava/lang/String; = "audio/mpeg3"

.field private static final AUDIO_MPG:Ljava/lang/String; = "audio/mpg"

.field private static final AUDIO_XMP3:Ljava/lang/String; = "audio/x-mp3"

.field private static final AUDIO_XMPEG:Ljava/lang/String; = "audio/x-mpeg"

.field private static final AUDIO_XMPEG3:Ljava/lang/String; = "audio/x-mpeg3"

.field private static final DATE_MODIFIED_PLAYLISTS_COLUMN_INDEX:I = 0x2

.field private static final DEFAULT_RINGTONE_PROPERTY_PREFIX:Ljava/lang/String; = "ro.config."

.field private static final ENABLE_BULK_INSERTS:Z = true

.field private static final FILES_PRESCAN_DATE_MODIFIED_COLUMN_INDEX:I = 0x3

.field private static final FILES_PRESCAN_FORMAT_COLUMN_INDEX:I = 0x2

.field private static final FILES_PRESCAN_ID_COLUMN_INDEX:I = 0x0

.field private static final FILES_PRESCAN_PATH_COLUMN_INDEX:I = 0x1

.field private static final FILES_PRESCAN_PROJECTION:[Ljava/lang/String; = null

.field private static final ID3_GENRES:[Ljava/lang/String; = null

.field private static final ID_PLAYLISTS_COLUMN_INDEX:I = 0x0

.field private static final ID_PROJECTION:[Ljava/lang/String; = null

.field private static final MUSIC_DIR:Ljava/lang/String; = "/music/"

.field private static final NOTIFICATIONS_DIR:Ljava/lang/String; = "/notifications/"

.field private static final PATH_PLAYLISTS_COLUMN_INDEX:I = 0x1

.field private static final PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String; = null

.field private static final PODCAST_DIR:Ljava/lang/String; = "/podcasts/"

.field private static final RINGTONES_DIR:Ljava/lang/String; = "/ringtones/"

.field public static final SCANNER_STAGE_POSTSCAN:I = 0x4

.field public static final SCANNER_STAGE_PRESCAN:I = 0x1

.field public static final SCANNER_STAGE_READY:I = 0x0

.field public static final SCANNER_STAGE_SCAN_SD1:I = 0x2

.field public static final SCANNER_STAGE_SCAN_SD2:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MediaScanner"

.field private static final VOICE_RECORDS_DIR_EXTERNAL:Ljava/lang/String; = "/mnt/sdcard/external_sd/Sounds/"

.field private static final VOICE_RECORDS_DIR_INTERNAL:Ljava/lang/String; = "/mnt/sdcard/Sounds/"

.field public static bIsExternalSDCardEjected:Z

.field public static bIsShuttingDown:Z

.field public static bIsUpdatingAudioMetadata:Z

.field public static mScannerStage:I


# instance fields
.field private final PATH_EXTERNAL_SDCARD:I

.field private final PATH_USB_STORAGE:I

.field private final isLogEnabled:Z

.field private mAudioUri:Landroid/net/Uri;

.field private mAudioVideoParsingTime:J

.field private mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private mCaseInsensitivePaths:Z

.field private mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

.field private mContext:Landroid/content/Context;

.field private mDefaultAlarmAlertFilename:Ljava/lang/String;

.field private mDefaultAlarmSet:Z

.field private mDefaultNotificationFilename:Ljava/lang/String;

.field private mDefaultNotificationSet:Z

.field private mDefaultRingtoneFilename:Ljava/lang/String;

.field private mDefaultRingtoneSet:Z

.field private mDrmManagerClient:Landroid/drm/DrmManagerClient;

.field private final mExternalStoragePath:Ljava/lang/String;

.field private mExternalStorageSdPath:Ljava/lang/String;

.field private mExternalStorageUsbPath:Ljava/lang/String;

.field private mFileCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MediaScanner$FileCacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mFilesUri:Landroid/net/Uri;

.field private mImageParsingTime:J

.field private mImagesUri:Landroid/net/Uri;

.field private mMediaDeleter:Landroid/media/MediaDeleter;

.field private mMediaInserter:Landroid/media/MediaInserter;

.field private mMediaProvider:Landroid/content/IContentProvider;

.field private mMediaUpdater:Landroid/media/MediaUpdater;

.field private mMtpObjectHandle:I

.field private mNativeContext:I

.field private mOriginalCount:I

.field private mPlayLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MediaScanner$FileCacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaylistsUri:Landroid/net/Uri;

.field private mProcessGenres:Z

.field private mProcessPlaylists:Z

.field private mThumbsUri:Landroid/net/Uri;

.field private mVideoCallImagesUri:Landroid/net/Uri;

.field private mVideoUri:Landroid/net/Uri;

.field private mWasEmptyPriorToScan:Z


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 121
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 122
    invoke-static {}, Landroid/media/MediaScanner;->native_init()V

    .line 128
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v2

    const-string v1, "format"

    aput-object v1, v0, v4

    const-string v1, "date_modified"

    aput-object v1, v0, v5

    sput-object v0, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    .line 135
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Landroid/media/MediaScanner;->ID_PROJECTION:[Ljava/lang/String;

    .line 144
    new-array v0, v2, [Ljava/lang/String;

    const-string/jumbo v1, "playlist_id"

    aput-object v1, v0, v3

    sput-object v0, Landroid/media/MediaScanner;->PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String;

    .line 180
    const/16 v0, 0x94

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Blues"

    aput-object v1, v0, v3

    const-string v1, "Classic Rock"

    aput-object v1, v0, v2

    const-string v1, "Country"

    aput-object v1, v0, v4

    const-string v1, "Dance"

    aput-object v1, v0, v5

    const-string v1, "Disco"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "Funk"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Grunge"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Hip-Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Metal"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "New Age"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Oldies"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Other"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "R&B"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Rap"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Reggae"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Techno"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Industrial"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Alternative"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Ska"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Death Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Pranks"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Soundtrack"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Euro-Techno"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Ambient"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Trip-Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Vocal"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Jazz+Funk"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Fusion"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Trance"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Classical"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Instrumental"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "Acid"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "House"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Game"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "Sound Clip"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "Gospel"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Noise"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "AlternRock"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "Space"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "Meditative"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "Instrumental Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "Instrumental Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "Ethnic"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "Gothic"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "Darkwave"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "Techno-Industrial"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "Pop-Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "Eurodance"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "Dream"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "Southern Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "Comedy"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "Cult"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "Gangsta"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "Top 40"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "Christian Rap"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "Pop/Funk"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "Jungle"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "Native American"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "Cabaret"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "New Wave"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "Psychadelic"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "Rave"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "Showtunes"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "Trailer"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "Lo-Fi"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "Tribal"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "Acid Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "Acid Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "Polka"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "Retro"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "Musical"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "Rock & Roll"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "Hard Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "Folk-Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "National Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "Swing"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "Fast Fusion"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "Bebob"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "Latin"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "Revival"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "Celtic"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "Bluegrass"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "Avantgarde"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "Gothic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "Progressive Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "Psychedelic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "Symphonic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "Slow Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "Big Band"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "Chorus"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "Easy Listening"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "Acoustic"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "Humour"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "Speech"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "Chanson"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "Opera"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "Chamber Music"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "Sonata"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "Symphony"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "Booty Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "Primus"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "Porn Groove"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "Satire"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "Slow Jam"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "Club"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "Tango"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "Samba"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "Folklore"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "Ballad"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "Power Ballad"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "Rhythmic Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "Freestyle"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "Duet"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "Punk Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "Drum Solo"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "A capella"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "Euro-House"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "Dance Hall"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "Goa"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "Drum & Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "Club-House"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "Hardcore"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "Terror"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "Britpop"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "Negerpunk"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "Polsk Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "Beat"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "Christian Gangsta"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "Heavy Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "Black Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "Crossover"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "Contemporary Christian"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "Christian Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "Merengue"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "Salsa"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "Thrash Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "Anime"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "JPop"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "Synthpop"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    .line 433
    sput-boolean v3, Landroid/media/MediaScanner;->bIsShuttingDown:Z

    .line 434
    sput-boolean v3, Landroid/media/MediaScanner;->bIsUpdatingAudioMetadata:Z

    .line 435
    sput-boolean v3, Landroid/media/MediaScanner;->bIsExternalSDCardEjected:Z

    .line 445
    sput v3, Landroid/media/MediaScanner;->mScannerStage:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "c"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 448
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-boolean v0, p0, Landroid/media/MediaScanner;->isLogEnabled:Z

    .line 371
    iput-boolean v0, p0, Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z

    .line 395
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 430
    iput-object v2, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 436
    iput-wide v3, p0, Landroid/media/MediaScanner;->mAudioVideoParsingTime:J

    .line 437
    iput-wide v3, p0, Landroid/media/MediaScanner;->mImageParsingTime:J

    .line 438
    iput v1, p0, Landroid/media/MediaScanner;->PATH_EXTERNAL_SDCARD:I

    .line 439
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/MediaScanner;->PATH_USB_STORAGE:I

    .line 474
    new-instance v0, Landroid/media/MediaScanner$MyMediaScannerClient;

    invoke-direct {v0, p0, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;-><init>(Landroid/media/MediaScanner;Landroid/media/MediaScanner$1;)V

    iput-object v0, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    .line 449
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_setup()V

    .line 450
    iput-object p1, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    .line 451
    iget-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 452
    iget-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 454
    invoke-direct {p0}, Landroid/media/MediaScanner;->setDefaultRingtoneFileNames()V

    .line 456
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mExternalStoragePath:Ljava/lang/String;

    .line 457
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 118
    invoke-static {p0}, Landroid/media/MediaScanner;->isNoMediaFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Landroid/media/MediaScanner;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 118
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mProcessGenres:Z

    return v0
.end method

.method static synthetic access$1100()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 118
    sget-object v0, Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;
    .registers 2
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/media/MediaScanner;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 118
    iget v0, p0, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    return v0
.end method

.method static synthetic access$1400(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/media/MediaScanner;)Landroid/media/MediaInserter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/media/MediaScanner;)Landroid/media/MediaUpdater;
    .registers 2
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaUpdater:Landroid/media/MediaUpdater;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/MediaScanner;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Landroid/media/MediaScanner;->isDrmEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;
    .registers 2
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/media/MediaScanner;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Landroid/media/MediaScanner;->mExternalStorageSdPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/media/MediaScanner;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 118
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z

    return v0
.end method

.method static synthetic access$2300(Landroid/media/MediaScanner;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 118
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationSet:Z

    return v0
.end method

.method static synthetic access$2302(Landroid/media/MediaScanner;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultNotificationSet:Z

    return p1
.end method

.method static synthetic access$2400(Landroid/media/MediaScanner;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/media/MediaScanner;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 118
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z

    return v0
.end method

.method static synthetic access$2502(Landroid/media/MediaScanner;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z

    return p1
.end method

.method static synthetic access$2600(Landroid/media/MediaScanner;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Landroid/media/MediaScanner;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2800(Landroid/media/MediaScanner;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 118
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmSet:Z

    return v0
.end method

.method static synthetic access$2802(Landroid/media/MediaScanner;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultAlarmSet:Z

    return p1
.end method

.method static synthetic access$2900(Landroid/media/MediaScanner;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/MediaScanner;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 118
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    return v0
.end method

.method static synthetic access$3000(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;I)Z
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 118
    invoke-direct/range {p0 .. p5}, Landroid/media/MediaScanner;->addPlayListEntry(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/media/MediaScanner;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Landroid/media/MediaScanner;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 118
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    return v0
.end method

.method static synthetic access$600(Landroid/media/MediaScanner;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 118
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaScanner;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    return-void
.end method

.method static synthetic access$814(Landroid/media/MediaScanner;J)J
    .registers 5
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iget-wide v0, p0, Landroid/media/MediaScanner;->mAudioVideoParsingTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/media/MediaScanner;->mAudioVideoParsingTime:J

    return-wide v0
.end method

.method static synthetic access$914(Landroid/media/MediaScanner;J)J
    .registers 5
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iget-wide v0, p0, Landroid/media/MediaScanner;->mImageParsingTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/media/MediaScanner;->mImageParsingTime:J

    return-wide v0
.end method

.method private addPlayListEntry(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;I)Z
    .registers 27
    .parameter "entry"
    .parameter "playListDirectory"
    .parameter "uri"
    .parameter "values"
    .parameter "index"

    .prologue
    .line 1861
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    .line 1862
    .local v15, entryLength:I
    :goto_4
    if-lez v15, :cond_17

    add-int/lit8 v3, v15, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_17

    add-int/lit8 v15, v15, -0x1

    goto :goto_4

    .line 1865
    :cond_17
    const/4 v3, 0x3

    if-ge v15, v3, :cond_1c

    const/4 v3, 0x0

    .line 1933
    :goto_1b
    return v3

    .line 1866
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v15, v3, :cond_29

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1870
    :cond_29
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 1871
    .local v13, ch1:C
    const/16 v3, 0x2f

    if-eq v13, v3, :cond_50

    invoke-static {v13}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_96

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_96

    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_96

    :cond_50
    const/16 v16, 0x1

    .line 1874
    .local v16, fullPath:Z
    :goto_52
    if-nez v16, :cond_69

    .line 1875
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1880
    :cond_69
    const/4 v9, 0x0

    .line 1883
    .local v9, bestMatch:Landroid/media/MediaScanner$FileCacheEntry;
    const/4 v10, 0x0

    .line 1885
    .local v10, bestMatchLength:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 1886
    .local v17, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/MediaScanner$FileCacheEntry;>;"
    :cond_77
    :goto_77
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_92

    .line 1887
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/MediaScanner$FileCacheEntry;

    .line 1888
    .local v12, cacheEntry:Landroid/media/MediaScanner$FileCacheEntry;
    iget-object v0, v12, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 1890
    .local v19, path:Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_99

    .line 1891
    move-object v9, v12

    .line 1902
    .end local v12           #cacheEntry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v19           #path:Ljava/lang/String;
    :cond_92
    if-nez v9, :cond_ab

    .line 1903
    const/4 v3, 0x0

    goto :goto_1b

    .line 1871
    .end local v9           #bestMatch:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v10           #bestMatchLength:I
    .end local v16           #fullPath:Z
    .end local v17           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/MediaScanner$FileCacheEntry;>;"
    :cond_96
    const/16 v16, 0x0

    goto :goto_52

    .line 1895
    .restart local v9       #bestMatch:Landroid/media/MediaScanner$FileCacheEntry;
    .restart local v10       #bestMatchLength:I
    .restart local v12       #cacheEntry:Landroid/media/MediaScanner$FileCacheEntry;
    .restart local v16       #fullPath:Z
    .restart local v17       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/MediaScanner$FileCacheEntry;>;"
    .restart local v19       #path:Ljava/lang/String;
    :cond_99
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner;->matchPaths(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 1896
    .local v18, matchLength:I
    move/from16 v0, v18

    if-le v0, v10, :cond_77

    .line 1897
    move-object v9, v12

    .line 1898
    move/from16 v10, v18

    goto :goto_77

    .line 1908
    .end local v12           #cacheEntry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v18           #matchLength:I
    .end local v19           #path:Ljava/lang/String;
    :cond_ab
    :try_start_ab
    iget-wide v3, v9, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_eb

    .line 1909
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    sget-object v5, Landroid/media/MediaScanner;->ID_PROJECTION:[Ljava/lang/String;

    const-string v6, "_data=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v0, v9, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v7, v8

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1912
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_e0

    .line 1913
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_dd

    .line 1914
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v9, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    .line 1916
    :cond_dd
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1918
    :cond_e0
    iget-wide v3, v9, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_eb

    .line 1919
    const/4 v3, 0x0

    goto/16 :goto_1b

    .line 1923
    .end local v11           #c:Landroid/database/Cursor;
    :cond_eb
    invoke-virtual/range {p4 .. p4}, Landroid/content/ContentValues;->clear()V

    .line 1924
    const-string/jumbo v3, "play_order"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1925
    const-string v3, "audio_id"

    iget-wide v4, v9, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1926
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-interface {v3, v0, v1}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_112
    .catch Landroid/os/RemoteException; {:try_start_ab .. :try_end_112} :catch_115

    .line 1933
    const/4 v3, 0x1

    goto/16 :goto_1b

    .line 1927
    :catch_115
    move-exception v14

    .line 1930
    .local v14, e:Landroid/os/RemoteException;
    const/4 v3, 0x0

    goto/16 :goto_1b
.end method

.method public static getScannerStage()I
    .registers 1

    .prologue
    .line 1663
    sget v0, Landroid/media/MediaScanner;->mScannerStage:I

    return v0
.end method

.method private getStoragePath(I)Ljava/lang/String;
    .registers 11
    .parameter "pathType"

    .prologue
    .line 1667
    const/4 v4, 0x0

    .line 1668
    .local v4, type:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1669
    .local v0, externalStoragePath:Ljava/lang/String;
    const/4 v6, 0x1

    if-ne p1, v6, :cond_39

    const-string/jumbo v4, "sd"

    .line 1675
    :goto_8
    iget-object v6, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "storage"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 1677
    .local v2, storageManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 1678
    .local v3, storageVolumes:[Landroid/os/storage/StorageVolume;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1a
    array-length v6, v3

    if-ge v1, v6, :cond_5d

    .line 1679
    aget-object v5, v3, v1

    .line 1680
    .local v5, volume:Landroid/os/storage/StorageVolume;
    if-eqz v4, :cond_5a

    if-eqz v5, :cond_5a

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5a

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 1681
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 1687
    .end local v1           #i:I
    .end local v2           #storageManager:Landroid/os/storage/StorageManager;
    .end local v3           #storageVolumes:[Landroid/os/storage/StorageVolume;
    .end local v5           #volume:Landroid/os/storage/StorageVolume;
    :goto_38
    return-object v6

    .line 1670
    :cond_39
    const/4 v6, 0x2

    if-ne p1, v6, :cond_40

    const-string/jumbo v4, "usb"

    goto :goto_8

    .line 1672
    :cond_40
    const-string v6, "MediaScanner"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported Storage Type : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    const/4 v6, 0x0

    goto :goto_38

    .line 1678
    .restart local v1       #i:I
    .restart local v2       #storageManager:Landroid/os/storage/StorageManager;
    .restart local v3       #storageVolumes:[Landroid/os/storage/StorageVolume;
    .restart local v5       #volume:Landroid/os/storage/StorageVolume;
    :cond_5a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 1686
    .end local v5           #volume:Landroid/os/storage/StorageVolume;
    :cond_5d
    const-string v6, "MediaScanner"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " WARNING : Path for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not set properly."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v0

    .line 1687
    goto :goto_38
.end method

.method private inScanDirectory(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 6
    .parameter "path"
    .parameter "directories"

    .prologue
    .line 1379
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v2, p2

    if-ge v1, v2, :cond_11

    .line 1380
    aget-object v0, p2, v1

    .line 1381
    .local v0, directory:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1382
    const/4 v2, 0x1

    .line 1385
    .end local v0           #directory:Ljava/lang/String;
    :goto_d
    return v2

    .line 1379
    .restart local v0       #directory:Ljava/lang/String;
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1385
    .end local v0           #directory:Ljava/lang/String;
    :cond_11
    const/4 v2, 0x0

    goto :goto_d
.end method

.method private initialize(Ljava/lang/String;)V
    .registers 5
    .parameter "volumeName"

    .prologue
    const/4 v2, 0x1

    .line 1544
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 1546
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    .line 1547
    invoke-static {p1}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    .line 1548
    invoke-static {p1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    .line 1549
    invoke-static {p1}, Landroid/provider/MediaStore$Images$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mThumbsUri:Landroid/net/Uri;

    .line 1550
    invoke-static {p1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    .line 1556
    const-string v0, "internal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 1558
    iput-boolean v2, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    .line 1559
    iput-boolean v2, p0, Landroid/media/MediaScanner;->mProcessGenres:Z

    .line 1560
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    .line 1562
    iput-boolean v2, p0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    .line 1564
    :cond_42
    return-void
.end method

.method private isDrmEnabled()Z
    .registers 2

    .prologue
    .line 486
    const/4 v0, 0x1

    return v0
.end method

.method private static isNoMediaFile(Ljava/lang/String;)Z
    .registers 11
    .parameter "path"

    .prologue
    const/16 v9, 0xa

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1718
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1719
    .local v6, file:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_11

    move v1, v4

    .line 1748
    :cond_10
    :goto_10
    return v1

    .line 1724
    :cond_11
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 1725
    .local v7, lastSlash:I
    if-ltz v7, :cond_7b

    add-int/lit8 v0, v7, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_7b

    .line 1727
    add-int/lit8 v0, v7, 0x1

    const-string v2, "._"

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v2, v4, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1734
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v2, v0, -0x4

    const-string v3, ".jpg"

    const/4 v5, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 1735
    add-int/lit8 v2, v7, 0x1

    const-string v3, "AlbumArt_{"

    move-object v0, p0

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_10

    add-int/lit8 v2, v7, 0x1

    const-string v3, "AlbumArt."

    const/16 v5, 0x9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1739
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v7

    add-int/lit8 v8, v0, -0x1

    .line 1740
    .local v8, length:I
    const/16 v0, 0x11

    if-ne v8, v0, :cond_6d

    add-int/lit8 v2, v7, 0x1

    const-string v3, "AlbumArtSmall"

    const/16 v5, 0xd

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_10

    :cond_6d
    if-ne v8, v9, :cond_7b

    add-int/lit8 v2, v7, 0x1

    const-string v3, "Folder"

    const/4 v5, 0x6

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_10

    .end local v8           #length:I
    :cond_7b
    move v1, v4

    .line 1748
    goto :goto_10
.end method

.method public static isNoMediaPath(Ljava/lang/String;)Z
    .registers 8
    .parameter "path"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1752
    if-nez p0, :cond_5

    .line 1772
    :goto_4
    return v3

    .line 1755
    :cond_5
    const-string v5, "/."

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_f

    move v3, v4

    goto :goto_4

    .line 1759
    :cond_f
    const/4 v1, 0x1

    .line 1760
    .local v1, offset:I
    :goto_10
    if-ltz v1, :cond_42

    .line 1761
    const/16 v5, 0x2f

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 1762
    .local v2, slashIndex:I
    if-le v2, v1, :cond_40

    .line 1763
    add-int/lit8 v2, v2, 0x1

    .line 1764
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".nomedia"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1765
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_40

    move v3, v4

    .line 1767
    goto :goto_4

    .line 1770
    .end local v0           #file:Ljava/io/File;
    :cond_40
    move v1, v2

    .line 1771
    goto :goto_10

    .line 1772
    .end local v2           #slashIndex:I
    :cond_42
    invoke-static {p0}, Landroid/media/MediaScanner;->isNoMediaFile(Ljava/lang/String;)Z

    move-result v3

    goto :goto_4
.end method

.method private matchPaths(Ljava/lang/String;Ljava/lang/String;)I
    .registers 16
    .parameter "path1"
    .parameter "path2"

    .prologue
    .line 1832
    const/4 v10, 0x0

    .line 1833
    .local v10, result:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 1834
    .local v8, end1:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    .line 1836
    .local v9, end2:I
    :goto_9
    if-lez v8, :cond_3f

    if-lez v9, :cond_3f

    .line 1837
    const/16 v0, 0x2f

    add-int/lit8 v1, v8, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v11

    .line 1838
    .local v11, slash1:I
    const/16 v0, 0x2f

    add-int/lit8 v1, v9, -0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v12

    .line 1839
    .local v12, slash2:I
    const/16 v0, 0x5c

    add-int/lit8 v1, v8, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v6

    .line 1840
    .local v6, backSlash1:I
    const/16 v0, 0x5c

    add-int/lit8 v1, v9, -0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v7

    .line 1841
    .local v7, backSlash2:I
    if-le v11, v6, :cond_40

    move v2, v11

    .line 1842
    .local v2, start1:I
    :goto_30
    if-le v12, v7, :cond_42

    move v4, v12

    .line 1843
    .local v4, start2:I
    :goto_33
    if-gez v2, :cond_44

    const/4 v2, 0x0

    .line 1844
    :goto_36
    if-gez v4, :cond_47

    const/4 v4, 0x0

    .line 1845
    :goto_39
    sub-int v5, v8, v2

    .line 1846
    .local v5, length:I
    sub-int v0, v9, v4

    if-eq v0, v5, :cond_4a

    .line 1854
    .end local v2           #start1:I
    .end local v4           #start2:I
    .end local v5           #length:I
    .end local v6           #backSlash1:I
    .end local v7           #backSlash2:I
    .end local v11           #slash1:I
    .end local v12           #slash2:I
    :cond_3f
    return v10

    .restart local v6       #backSlash1:I
    .restart local v7       #backSlash2:I
    .restart local v11       #slash1:I
    .restart local v12       #slash2:I
    :cond_40
    move v2, v6

    .line 1841
    goto :goto_30

    .restart local v2       #start1:I
    :cond_42
    move v4, v7

    .line 1842
    goto :goto_33

    .line 1843
    .restart local v4       #start2:I
    :cond_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 1844
    :cond_47
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    .line 1847
    .restart local v5       #length:I
    :cond_4a
    const/4 v1, 0x1

    move-object v0, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1848
    add-int/lit8 v10, v10, 0x1

    .line 1849
    add-int/lit8 v8, v2, -0x1

    .line 1850
    add-int/lit8 v9, v4, -0x1

    .line 1852
    goto :goto_9
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
.end method

.method private final native native_setup()V
.end method

.method public static native notifyUnmount(Ljava/lang/String;)V
.end method

.method private postscan([Ljava/lang/String;)V
    .registers 19
    .parameter "directories"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1435
    const-string v13, "MediaScanner"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "postscan enter: directories - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v15, p1, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1439
    .local v6, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/MediaScanner$FileCacheEntry;>;"
    const/4 v5, 0x0

    .line 1440
    .local v5, isScanningExternalVolume:Z
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    if-eqz v13, :cond_40

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    const-string v14, "external"

    invoke-static {v14}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_40

    const/4 v5, 0x1

    .line 1444
    :cond_40
    if-eqz v5, :cond_d6

    .line 1445
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "storage"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/storage/StorageManager;

    .line 1446
    .local v9, storageManager:Landroid/os/storage/StorageManager;
    const-string/jumbo v13, "mounted"

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaScanner;->mExternalStoragePath:Ljava/lang/String;

    invoke-virtual {v9, v14}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_d6

    .line 1447
    const-string v13, "MediaScanner"

    const-string v14, "Internal SD card is not MOUNTED. (Maybe shutting down) Skip postscan()!"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    .end local v9           #storageManager:Landroid/os/storage/StorageManager;
    :goto_6b
    return-void

    .line 1473
    .local v2, entry:Landroid/media/MediaScanner$FileCacheEntry;
    .local v8, path:Ljava/lang/String;
    :cond_6c
    const/4 v3, 0x0

    .line 1475
    .local v3, fileMissing:Z
    iget-boolean v13, v2, Landroid/media/MediaScanner$FileCacheEntry;->mSeenInFileSystem:Z

    if-nez v13, :cond_8f

    iget v13, v2, Landroid/media/MediaScanner$FileCacheEntry;->mFormat:I

    invoke-static {v13}, Landroid/mtp/MtpConstants;->isAbstractObject(I)Z

    move-result v13

    if-nez v13, :cond_8f

    .line 1476
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v8, v1}, Landroid/media/MediaScanner;->inScanDirectory(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_f1

    .line 1479
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1480
    .local v11, testFile1:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_8f

    .line 1481
    const/4 v3, 0x1

    .line 1495
    .end local v11           #testFile1:Ljava/io/File;
    :cond_8f
    :goto_8f
    if-eqz v3, :cond_d6

    .line 1500
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1501
    .local v12, values:Landroid/content/ContentValues;
    const-string v13, "_data"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1502
    const-string v13, "date_modified"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1503
    const-string/jumbo v13, "title"

    invoke-virtual {v12, v13, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    invoke-static {v8}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v7

    .line 1510
    .local v7, mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-nez v7, :cond_fe

    const/4 v4, 0x0

    .line 1512
    .local v4, fileType:I
    :goto_b4
    invoke-static {v4}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v13

    if-nez v13, :cond_116

    .line 1514
    if-eqz v5, :cond_101

    iget v13, v2, Landroid/media/MediaScanner$FileCacheEntry;->mFormat:I

    const/16 v14, 0x3001

    if-eq v13, v14, :cond_101

    .line 1515
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaScanner;->mMediaDeleter:Landroid/media/MediaDeleter;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    iget-wide v15, v2, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    invoke-static/range {v14 .. v16}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v13, v14, v12}, Landroid/media/MediaDeleter;->delete(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 1517
    :goto_d3
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 1452
    .end local v2           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v3           #fileMissing:Z
    .end local v4           #fileType:I
    .end local v7           #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    .end local v8           #path:Ljava/lang/String;
    .end local v12           #values:Landroid/content/ContentValues;
    :cond_d6
    :goto_d6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_12d

    .line 1453
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaScanner$FileCacheEntry;

    .line 1454
    .restart local v2       #entry:Landroid/media/MediaScanner$FileCacheEntry;
    iget-object v8, v2, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    .line 1457
    .restart local v8       #path:Ljava/lang/String;
    sget-boolean v13, Landroid/media/MediaScanner;->bIsShuttingDown:Z

    if-eqz v13, :cond_6c

    .line 1458
    const-string v13, "MediaScanner"

    const-string v14, "Device is shutting down!! return postscan. Do not need to call MediaProvider.delete()"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6b

    .line 1488
    .restart local v3       #fileMissing:Z
    :cond_f1
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1489
    .local v10, testFile:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_8f

    .line 1490
    const/4 v3, 0x1

    goto :goto_8f

    .line 1510
    .end local v10           #testFile:Ljava/io/File;
    .restart local v7       #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    .restart local v12       #values:Landroid/content/ContentValues;
    :cond_fe
    iget v4, v7, Landroid/media/MediaFile$MediaFileType;->fileType:I

    goto :goto_b4

    .line 1516
    .restart local v4       #fileType:I
    :cond_101
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    iget-wide v15, v2, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    invoke-static/range {v14 .. v16}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-interface/range {v13 .. v16}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_d3

    .line 1520
    :cond_116
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    iget-wide v15, v2, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    invoke-static/range {v14 .. v16}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v13, v14, v12, v15, v0}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_d6

    .line 1526
    .end local v2           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v3           #fileMissing:Z
    .end local v4           #fileType:I
    .end local v7           #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    .end local v8           #path:Ljava/lang/String;
    .end local v12           #values:Landroid/content/ContentValues;
    :cond_12d
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    if-eqz v13, :cond_136

    .line 1527
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->processPlayLists()V

    .line 1530
    :cond_136
    move-object/from16 v0, p0

    iget v13, v0, Landroid/media/MediaScanner;->mOriginalCount:I

    if-nez v13, :cond_156

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    const-string v14, "external"

    invoke-static {v14}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_156

    .line 1531
    const-string v13, "MediaScanner"

    const-string v14, "call pruneDeadThumbnailFiles()"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->pruneDeadThumbnailFiles()V

    .line 1536
    :cond_156
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 1537
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    .line 1538
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 1540
    const-string v13, "MediaScanner"

    const-string/jumbo v14, "postscan return"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6b
.end method

.method private prescan(Ljava/lang/String;Z)V
    .registers 24
    .parameter "filePath"
    .parameter "prescanFiles"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1305
    const-string v1, "MediaScanner"

    const-string/jumbo v2, "prescan enter"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    const/16 v19, 0x0

    .line 1307
    .local v19, c:Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 1308
    .local v4, where:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1310
    .local v5, selectionArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    if-nez v1, :cond_a0

    .line 1311
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    .line 1315
    :goto_1b
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    if-nez v1, :cond_a9

    .line 1316
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 1321
    :goto_2a
    if-eqz p1, :cond_34

    .line 1323
    const-string v4, "_data=?"

    .line 1324
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    .end local v5           #selectionArgs:[Ljava/lang/String;
    const/4 v1, 0x0

    aput-object p1, v5, v1

    .line 1329
    .restart local v5       #selectionArgs:[Ljava/lang/String;
    :cond_34
    if-eqz p2, :cond_b9

    .line 1332
    :try_start_36
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    sget-object v3, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 1335
    if-eqz v19, :cond_b9

    .line 1336
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_b2

    const/4 v1, 0x1

    :goto_4e
    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z

    .line 1337
    :cond_52
    :goto_52
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 1338
    const/4 v1, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1339
    .local v7, rowId:J
    const/4 v1, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1340
    .local v9, path:Ljava/lang/String;
    const/4 v1, 0x2

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1341
    .local v12, format:I
    const/4 v1, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1346
    .local v10, lastModified:J
    if-eqz v9, :cond_52

    const-string v1, "/"

    invoke-virtual {v9, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 1347
    move-object/from16 v20, v9

    .line 1348
    .local v20, key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    if-eqz v1, :cond_8a

    .line 1349
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    .line 1352
    :cond_8a
    new-instance v6, Landroid/media/MediaScanner$FileCacheEntry;

    invoke-direct/range {v6 .. v12}, Landroid/media/MediaScanner$FileCacheEntry;-><init>(JLjava/lang/String;JI)V

    .line 1354
    .local v6, entry:Landroid/media/MediaScanner$FileCacheEntry;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    move-object/from16 v0, v20

    invoke-virtual {v1, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_98
    .catchall {:try_start_36 .. :try_end_98} :catchall_99

    goto :goto_52

    .line 1363
    .end local v6           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v7           #rowId:J
    .end local v9           #path:Ljava/lang/String;
    .end local v10           #lastModified:J
    .end local v12           #format:I
    .end local v20           #key:Ljava/lang/String;
    :catchall_99
    move-exception v1

    if-eqz v19, :cond_9f

    .line 1364
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_9f
    throw v1

    .line 1313
    :cond_a0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_1b

    .line 1318
    :cond_a9
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_2a

    .line 1336
    :cond_b2
    const/4 v1, 0x0

    goto :goto_4e

    .line 1357
    :cond_b4
    :try_start_b4
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V
    :try_end_b7
    .catchall {:try_start_b4 .. :try_end_b7} :catchall_99

    .line 1358
    const/16 v19, 0x0

    .line 1363
    :cond_b9
    if-eqz v19, :cond_be

    .line 1364
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1369
    :cond_be
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Landroid/media/MediaScanner;->mOriginalCount:I

    .line 1370
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    sget-object v15, Landroid/media/MediaScanner;->ID_PROJECTION:[Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-interface/range {v13 .. v18}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 1371
    if-eqz v19, :cond_e4

    .line 1372
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/media/MediaScanner;->mOriginalCount:I

    .line 1373
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1375
    :cond_e4
    const-string v1, "MediaScanner"

    const-string/jumbo v2, "prescan return"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    return-void
.end method

.method private native processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;)V
.end method

.method private native processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
.end method

.method private processM3uPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .registers 14
    .parameter "path"
    .parameter "playListDirectory"
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 1937
    const/4 v7, 0x0

    .line 1939
    .local v7, reader:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1940
    .local v6, f:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1941
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x2000

    invoke-direct {v8, v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_57
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1d} :catch_4e

    .line 1943
    .end local v7           #reader:Ljava/io/BufferedReader;
    .local v8, reader:Ljava/io/BufferedReader;
    :try_start_1d
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 1944
    .local v1, line:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1945
    .local v5, index:I
    :goto_22
    if-eqz v1, :cond_47

    .line 1947
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_42

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x23

    if-eq v0, v2, :cond_42

    .line 1948
    invoke-virtual {p4}, Landroid/content/ContentValues;->clear()V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1949
    invoke-direct/range {v0 .. v5}, Landroid/media/MediaScanner;->addPlayListEntry(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1950
    add-int/lit8 v5, v5, 0x1

    .line 1952
    :cond_42
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_45
    .catchall {:try_start_1d .. :try_end_45} :catchall_62
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_45} :catch_65

    move-result-object v1

    goto :goto_22

    :cond_47
    move-object v7, v8

    .line 1960
    .end local v1           #line:Ljava/lang/String;
    .end local v5           #index:I
    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :cond_48
    if-eqz v7, :cond_4d

    .line 1961
    :try_start_4a
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_5e

    .line 1967
    .end local v6           #f:Ljava/io/File;
    :cond_4d
    :goto_4d
    return-void

    .line 1955
    :catch_4e
    move-exception v0

    .line 1960
    :goto_4f
    if-eqz v7, :cond_4d

    .line 1961
    :try_start_51
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    goto :goto_4d

    .line 1962
    :catch_55
    move-exception v0

    goto :goto_4d

    .line 1959
    :catchall_57
    move-exception v0

    .line 1960
    :goto_58
    if-eqz v7, :cond_5d

    .line 1961
    :try_start_5a
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_60

    .line 1965
    :cond_5d
    :goto_5d
    throw v0

    .line 1962
    .restart local v6       #f:Ljava/io/File;
    :catch_5e
    move-exception v0

    goto :goto_4d

    .end local v6           #f:Ljava/io/File;
    :catch_60
    move-exception v2

    goto :goto_5d

    .line 1959
    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v6       #f:Ljava/io/File;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    :catchall_62
    move-exception v0

    move-object v7, v8

    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    goto :goto_58

    .line 1955
    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    :catch_65
    move-exception v0

    move-object v7, v8

    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    goto :goto_4f
.end method

.method private processPlayList(Landroid/media/MediaScanner$FileCacheEntry;)V
    .registers 18
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2069
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    .line 2070
    .local v7, path:Ljava/lang/String;
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 2071
    .local v12, values:Landroid/content/ContentValues;
    const/16 v13, 0x2f

    invoke-virtual {v7, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 2072
    .local v3, lastSlash:I
    if-gez v3, :cond_2a

    new-instance v13, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "bad path "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 2074
    :cond_2a
    move-object/from16 v0, p1

    iget-wide v9, v0, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    .line 2077
    .local v9, rowId:J
    const-string/jumbo v13, "name"

    invoke-virtual {v12, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2078
    .local v6, name:Ljava/lang/String;
    if-nez v6, :cond_4e

    .line 2079
    const-string/jumbo v13, "title"

    invoke-virtual {v12, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2080
    if-nez v6, :cond_4e

    .line 2082
    const/16 v13, 0x2e

    invoke-virtual {v7, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 2083
    .local v2, lastDot:I
    if-gez v2, :cond_9b

    add-int/lit8 v13, v3, 0x1

    invoke-virtual {v7, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 2088
    .end local v2           #lastDot:I
    :cond_4e
    :goto_4e
    const-string/jumbo v13, "name"

    invoke-virtual {v12, v13, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2089
    const-string v13, "date_modified"

    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/media/MediaScanner$FileCacheEntry;->mLastModified:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2091
    const-wide/16 v13, 0x0

    cmp-long v13, v9, v13

    if-nez v13, :cond_a2

    .line 2092
    const-string v13, "_data"

    invoke-virtual {v12, v13, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2093
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    invoke-interface {v13, v14, v12}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    .line 2094
    .local v11, uri:Landroid/net/Uri;
    invoke-static {v11}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    .line 2095
    const-string/jumbo v13, "members"

    invoke-static {v11, v13}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 2105
    .local v5, membersUri:Landroid/net/Uri;
    :goto_83
    const/4 v13, 0x0

    add-int/lit8 v14, v3, 0x1

    invoke-virtual {v7, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 2106
    .local v8, playListDirectory:Ljava/lang/String;
    invoke-static {v7}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v4

    .line 2107
    .local v4, mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-nez v4, :cond_c4

    const/4 v1, 0x0

    .line 2109
    .local v1, fileType:I
    :goto_91
    const/16 v13, 0x29

    if-ne v1, v13, :cond_c7

    .line 2110
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v5, v12}, Landroid/media/MediaScanner;->processM3uPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 2116
    :cond_9a
    :goto_9a
    return-void

    .line 2083
    .end local v1           #fileType:I
    .end local v4           #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    .end local v5           #membersUri:Landroid/net/Uri;
    .end local v8           #playListDirectory:Ljava/lang/String;
    .end local v11           #uri:Landroid/net/Uri;
    .restart local v2       #lastDot:I
    :cond_9b
    add-int/lit8 v13, v3, 0x1

    invoke-virtual {v7, v13, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_4e

    .line 2097
    .end local v2           #lastDot:I
    :cond_a2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    invoke-static {v13, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 2098
    .restart local v11       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface {v13, v11, v12, v14, v15}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2101
    const-string/jumbo v13, "members"

    invoke-static {v11, v13}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 2102
    .restart local v5       #membersUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface {v13, v5, v14, v15}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_83

    .line 2107
    .restart local v4       #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    .restart local v8       #playListDirectory:Ljava/lang/String;
    :cond_c4
    iget v1, v4, Landroid/media/MediaFile$MediaFileType;->fileType:I

    goto :goto_91

    .line 2111
    .restart local v1       #fileType:I
    :cond_c7
    const/16 v13, 0x2a

    if-ne v1, v13, :cond_d1

    .line 2112
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v5, v12}, Landroid/media/MediaScanner;->processPlsPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_9a

    .line 2113
    :cond_d1
    const/16 v13, 0x2b

    if-ne v1, v13, :cond_9a

    .line 2114
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v5}, Landroid/media/MediaScanner;->processWplPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_9a
.end method

.method private processPlayLists()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2119
    iget-object v2, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2120
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/MediaScanner$FileCacheEntry;>;"
    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 2121
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaScanner$FileCacheEntry;

    .line 2123
    .local v0, entry:Landroid/media/MediaScanner$FileCacheEntry;
    iget-boolean v2, v0, Landroid/media/MediaScanner$FileCacheEntry;->mLastModifiedChanged:Z

    if-eqz v2, :cond_6

    .line 2124
    invoke-direct {p0, v0}, Landroid/media/MediaScanner;->processPlayList(Landroid/media/MediaScanner$FileCacheEntry;)V

    goto :goto_6

    .line 2127
    .end local v0           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    :cond_1a
    return-void
.end method

.method private processPlsPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .registers 16
    .parameter "path"
    .parameter "playListDirectory"
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 1970
    const/4 v9, 0x0

    .line 1972
    .local v9, reader:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1973
    .local v7, f:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 1974
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0x2000

    invoke-direct {v10, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_5e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1d} :catch_55

    .line 1976
    .end local v9           #reader:Ljava/io/BufferedReader;
    .local v10, reader:Ljava/io/BufferedReader;
    :try_start_1d
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 1977
    .local v8, line:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1978
    .local v5, index:I
    :goto_22
    if-eqz v8, :cond_4e

    .line 1980
    const-string v0, "File"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1981
    const/16 v0, 0x3d

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 1982
    .local v6, equals:I
    if-lez v6, :cond_49

    .line 1983
    invoke-virtual {p4}, Landroid/content/ContentValues;->clear()V

    .line 1984
    add-int/lit8 v0, v6, 0x1

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaScanner;->addPlayListEntry(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1985
    add-int/lit8 v5, v5, 0x1

    .line 1988
    .end local v6           #equals:I
    :cond_49
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_4c
    .catchall {:try_start_1d .. :try_end_4c} :catchall_69
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_4c} :catch_6c

    move-result-object v8

    goto :goto_22

    :cond_4e
    move-object v9, v10

    .line 1996
    .end local v5           #index:I
    .end local v8           #line:Ljava/lang/String;
    .end local v10           #reader:Ljava/io/BufferedReader;
    .restart local v9       #reader:Ljava/io/BufferedReader;
    :cond_4f
    if-eqz v9, :cond_54

    .line 1997
    :try_start_51
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_65

    .line 2003
    .end local v7           #f:Ljava/io/File;
    :cond_54
    :goto_54
    return-void

    .line 1991
    :catch_55
    move-exception v0

    .line 1996
    :goto_56
    if-eqz v9, :cond_54

    .line 1997
    :try_start_58
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5c

    goto :goto_54

    .line 1998
    :catch_5c
    move-exception v0

    goto :goto_54

    .line 1995
    :catchall_5e
    move-exception v0

    .line 1996
    :goto_5f
    if-eqz v9, :cond_64

    .line 1997
    :try_start_61
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_67

    .line 2001
    :cond_64
    :goto_64
    throw v0

    .line 1998
    .restart local v7       #f:Ljava/io/File;
    :catch_65
    move-exception v0

    goto :goto_54

    .end local v7           #f:Ljava/io/File;
    :catch_67
    move-exception v1

    goto :goto_64

    .line 1995
    .end local v9           #reader:Ljava/io/BufferedReader;
    .restart local v7       #f:Ljava/io/File;
    .restart local v10       #reader:Ljava/io/BufferedReader;
    :catchall_69
    move-exception v0

    move-object v9, v10

    .end local v10           #reader:Ljava/io/BufferedReader;
    .restart local v9       #reader:Ljava/io/BufferedReader;
    goto :goto_5f

    .line 1991
    .end local v9           #reader:Ljava/io/BufferedReader;
    .restart local v10       #reader:Ljava/io/BufferedReader;
    :catch_6c
    move-exception v0

    move-object v9, v10

    .end local v10           #reader:Ljava/io/BufferedReader;
    .restart local v9       #reader:Ljava/io/BufferedReader;
    goto :goto_56
.end method

.method private processWplPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 10
    .parameter "path"
    .parameter "playListDirectory"
    .parameter "uri"

    .prologue
    .line 2045
    const/4 v2, 0x0

    .line 2047
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2048
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 2049
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_42
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_11} :catch_2a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_11} :catch_36

    .line 2051
    .end local v2           #fis:Ljava/io/FileInputStream;
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_11
    const-string v4, "UTF-8"

    invoke-static {v4}, Landroid/util/Xml;->findEncodingByName(Ljava/lang/String;)Landroid/util/Xml$Encoding;

    move-result-object v4

    new-instance v5, Landroid/media/MediaScanner$WplHandler;

    invoke-direct {v5, p0, p2, p3}, Landroid/media/MediaScanner$WplHandler;-><init>(Landroid/media/MediaScanner;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v5}, Landroid/media/MediaScanner$WplHandler;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V
    :try_end_23
    .catchall {:try_start_11 .. :try_end_23} :catchall_4d
    .catch Lorg/xml/sax/SAXException; {:try_start_11 .. :try_end_23} :catch_53
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_23} :catch_50

    move-object v2, v3

    .line 2059
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :cond_24
    if-eqz v2, :cond_29

    .line 2060
    :try_start_26
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_49

    .line 2066
    .end local v1           #f:Ljava/io/File;
    :cond_29
    :goto_29
    return-void

    .line 2053
    :catch_2a
    move-exception v0

    .line 2054
    .local v0, e:Lorg/xml/sax/SAXException;
    :goto_2b
    :try_start_2b
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_42

    .line 2059
    if-eqz v2, :cond_29

    .line 2060
    :try_start_30
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_29

    .line 2061
    :catch_34
    move-exception v4

    goto :goto_29

    .line 2055
    .end local v0           #e:Lorg/xml/sax/SAXException;
    :catch_36
    move-exception v0

    .line 2056
    .local v0, e:Ljava/io/IOException;
    :goto_37
    :try_start_37
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_42

    .line 2059
    if-eqz v2, :cond_29

    .line 2060
    :try_start_3c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_40

    goto :goto_29

    .line 2061
    :catch_40
    move-exception v4

    goto :goto_29

    .line 2058
    .end local v0           #e:Ljava/io/IOException;
    :catchall_42
    move-exception v4

    .line 2059
    :goto_43
    if-eqz v2, :cond_48

    .line 2060
    :try_start_45
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_4b

    .line 2064
    :cond_48
    :goto_48
    throw v4

    .line 2061
    .restart local v1       #f:Ljava/io/File;
    :catch_49
    move-exception v4

    goto :goto_29

    .end local v1           #f:Ljava/io/File;
    :catch_4b
    move-exception v5

    goto :goto_48

    .line 2058
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #f:Ljava/io/File;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catchall_4d
    move-exception v4

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_43

    .line 2055
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_50
    move-exception v0

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_37

    .line 2053
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_53
    move-exception v0

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_2b
.end method

.method private pruneDeadThumbnailFiles()V
    .registers 15

    .prologue
    const/4 v1, 0x0

    .line 1389
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 1390
    .local v8, existingFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v7, "/sdcard/DCIM/.thumbnails"

    .line 1391
    .local v7, directory:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v10

    .line 1392
    .local v10, files:[Ljava/lang/String;
    if-nez v10, :cond_15

    .line 1393
    new-array v10, v1, [Ljava/lang/String;

    .line 1395
    :cond_15
    const/4 v12, 0x0

    .local v12, i:I
    :goto_16
    array-length v0, v10

    if-ge v12, v0, :cond_38

    .line 1396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v10, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1397
    .local v11, fullPathString:Ljava/lang/String;
    invoke-virtual {v8, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1395
    add-int/lit8 v12, v12, 0x1

    goto :goto_16

    .line 1401
    .end local v11           #fullPathString:Ljava/lang/String;
    :cond_38
    :try_start_38
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/media/MediaScanner;->mThumbsUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1409
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_61

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 1411
    :cond_53
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1412
    .restart local v11       #fullPathString:Ljava/lang/String;
    invoke-virtual {v8, v11}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1413
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_53

    .line 1416
    .end local v11           #fullPathString:Ljava/lang/String;
    :cond_61
    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_65
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;
    :try_end_71
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_71} :catch_82

    .line 1420
    .local v9, fileToDelete:Ljava/lang/String;
    :try_start_71
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_79
    .catch Ljava/lang/SecurityException; {:try_start_71 .. :try_end_79} :catch_7a
    .catch Landroid/os/RemoteException; {:try_start_71 .. :try_end_79} :catch_82

    goto :goto_65

    .line 1421
    :catch_7a
    move-exception v0

    goto :goto_65

    .line 1426
    .end local v9           #fileToDelete:Ljava/lang/String;
    :cond_7c
    if-eqz v6, :cond_81

    .line 1427
    :try_start_7e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_81
    .catch Landroid/os/RemoteException; {:try_start_7e .. :try_end_81} :catch_82

    .line 1432
    .end local v6           #c:Landroid/database/Cursor;
    .end local v13           #i$:Ljava/util/Iterator;
    :cond_81
    :goto_81
    return-void

    .line 1429
    :catch_82
    move-exception v0

    goto :goto_81
.end method

.method private setDefaultRingtoneFileNames()V
    .registers 2

    .prologue
    .line 460
    const-string/jumbo v0, "ro.config.ringtone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    .line 462
    const-string/jumbo v0, "ro.config.notification_sound"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    .line 464
    const-string/jumbo v0, "ro.config.alarm_alert"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    .line 466
    return-void
.end method

.method public static stopMediaScanner(Ljava/lang/String;)V
    .registers 2
    .parameter "path"

    .prologue
    .line 1691
    invoke-static {p0}, Landroid/media/MediaScanner;->notifyUnmount(Ljava/lang/String;)V

    .line 1692
    const/4 v0, 0x1

    sput-boolean v0, Landroid/media/MediaScanner;->bIsExternalSDCardEjected:Z

    .line 1693
    return-void
.end method


# virtual methods
.method public native extractAlbumArt(Ljava/io/FileDescriptor;)[B
.end method

.method protected finalize()V
    .registers 3

    .prologue
    .line 2157
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2158
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_finalize()V

    .line 2159
    return-void
.end method

.method public release()V
    .registers 1

    .prologue
    .line 2152
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_finalize()V

    .line 2153
    return-void
.end method

.method public scanDirectories([Ljava/lang/String;Ljava/lang/String;)V
    .registers 27
    .parameter "directories"
    .parameter "volumeName"

    .prologue
    .line 1567
    const/16 v20, 0x1

    sput v20, Landroid/media/MediaScanner;->mScannerStage:I

    .line 1569
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 1570
    .local v17, start:J
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 1571
    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 1572
    const/16 v20, 0x2

    sput v20, Landroid/media/MediaScanner;->mScannerStage:I

    .line 1573
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 1575
    .local v13, prescan:J
    const/4 v12, 0x0

    .line 1576
    .local v12, isScanningExternal:Z
    const/16 v20, 0x0

    sput-boolean v20, Landroid/media/MediaScanner;->bIsExternalSDCardEjected:Z

    .line 1577
    const/16 v20, 0x0

    aget-object v20, p1, v20

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_3c

    const/4 v12, 0x1

    .line 1580
    :cond_3c
    if-eqz v12, :cond_77

    .line 1582
    new-instance v20, Landroid/media/MediaInserter;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v21, v0

    const/16 v22, 0x64

    invoke-direct/range {v20 .. v22}, Landroid/media/MediaInserter;-><init>(Landroid/content/IContentProvider;I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    .line 1583
    new-instance v20, Landroid/media/MediaUpdater;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v21, v0

    const/16 v22, 0x64

    invoke-direct/range {v20 .. v22}, Landroid/media/MediaUpdater;-><init>(Landroid/content/IContentProvider;I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner;->mMediaUpdater:Landroid/media/MediaUpdater;

    .line 1584
    new-instance v20, Landroid/media/MediaDeleter;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v21, v0

    const/16 v22, 0x64

    invoke-direct/range {v20 .. v22}, Landroid/media/MediaDeleter;-><init>(Landroid/content/IContentProvider;I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner;->mMediaDeleter:Landroid/media/MediaDeleter;

    .line 1587
    :cond_77
    const-string v20, "internal"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_d0

    .line 1588
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mExternalStorageSdPath:Ljava/lang/String;

    move-object/from16 v20, v0

    if-nez v20, :cond_9b

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/media/MediaScanner;->getStoragePath(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner;->mExternalStorageSdPath:Ljava/lang/String;

    .line 1589
    :cond_9b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mExternalStorageUsbPath:Ljava/lang/String;

    move-object/from16 v20, v0

    if-nez v20, :cond_b3

    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/media/MediaScanner;->getStoragePath(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner;->mExternalStorageUsbPath:Ljava/lang/String;

    .line 1590
    :cond_b3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mExternalStoragePath:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mExternalStorageSdPath:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mExternalStorageUsbPath:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaScanner;->setSdCardPathsToNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1593
    :cond_d0
    const/4 v7, 0x0

    .local v7, i:I
    :goto_d1
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v7, v0, :cond_15c

    .line 1594
    const-string v20, "MediaScanner"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "scanDirectory [#"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    add-int/lit8 v22, v7, 0x1

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "]  "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    aget-object v22, p1, v7

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    aget-object v20, p1, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner;->processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 1597
    if-eqz v12, :cond_13c

    .line 1598
    sget-boolean v20, Landroid/media/MediaScanner;->bIsExternalSDCardEjected:Z

    if-eqz v20, :cond_143

    aget-object v20, p1, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mExternalStorageSdPath:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_143

    .line 1599
    const-string v20, "MediaScanner"

    const-string v21, "External SD card is ejected during scanning. Do not flush!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    :cond_13c
    :goto_13c
    const/16 v20, 0x3

    sput v20, Landroid/media/MediaScanner;->mScannerStage:I

    .line 1593
    add-int/lit8 v7, v7, 0x1

    goto :goto_d1

    .line 1602
    :cond_143
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/media/MediaInserter;->flushAll()V

    .line 1603
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaUpdater:Landroid/media/MediaUpdater;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/media/MediaUpdater;->flush()V
    :try_end_155
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_155} :catch_156
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_155} :catch_317
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_155} :catch_31a

    goto :goto_13c

    .line 1646
    .end local v7           #i:I
    .end local v12           #isScanningExternal:Z
    .end local v13           #prescan:J
    .end local v17           #start:J
    :catch_156
    move-exception v20

    .line 1658
    :goto_157
    const/16 v20, 0x0

    sput v20, Landroid/media/MediaScanner;->mScannerStage:I

    .line 1659
    return-void

    .line 1608
    .restart local v7       #i:I
    .restart local v12       #isScanningExternal:Z
    .restart local v13       #prescan:J
    .restart local v17       #start:J
    :cond_15c
    const/16 v20, 0x4

    :try_start_15e
    sput v20, Landroid/media/MediaScanner;->mScannerStage:I

    .line 1609
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 1610
    .local v15, scan:J
    invoke-direct/range {p0 .. p1}, Landroid/media/MediaScanner;->postscan([Ljava/lang/String;)V

    .line 1611
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1613
    .local v5, end:J
    if-eqz v12, :cond_176

    .line 1614
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaDeleter:Landroid/media/MediaDeleter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/media/MediaDeleter;->flush()V

    .line 1618
    :cond_176
    if-eqz v12, :cond_25c

    .line 1619
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/media/MediaInserter;->getCount(Landroid/net/Uri;)I

    move-result v10

    .line 1620
    .local v10, insertedImage:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/media/MediaInserter;->getCount(Landroid/net/Uri;)I

    move-result v8

    .line 1621
    .local v8, insertedAudio:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/media/MediaInserter;->getCount(Landroid/net/Uri;)I

    move-result v11

    .line 1622
    .local v11, insertedVideo:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/media/MediaInserter;->getCount(Landroid/net/Uri;)I

    move-result v9

    .line 1626
    .local v9, insertedFile:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaUpdater:Landroid/media/MediaUpdater;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/media/MediaUpdater;->getCount()I

    move-result v19

    .line 1627
    .local v19, updated:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaDeleter:Landroid/media/MediaDeleter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/media/MediaDeleter;->getCount()I

    move-result v4

    .line 1629
    .local v4, deleted:I
    const-string v20, "MediaScanner"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "  scanned file: Audio "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", Video "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", Image "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", File "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    if-lez v19, :cond_228

    const-string v20, "MediaScanner"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "  updated file: Audio "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    :cond_228
    if-lez v4, :cond_244

    const-string v20, "MediaScanner"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "  deleted file: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    :cond_244
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    .line 1634
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner;->mMediaUpdater:Landroid/media/MediaUpdater;

    .line 1635
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner;->mMediaDeleter:Landroid/media/MediaDeleter;

    .line 1639
    .end local v4           #deleted:I
    .end local v8           #insertedAudio:I
    .end local v9           #insertedFile:I
    .end local v10           #insertedImage:I
    .end local v11           #insertedVideo:I
    .end local v19           #updated:I
    :cond_25c
    const-string v20, "MediaScanner"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "  prescan time: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sub-long v22, v13, v17

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "ms\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    const-string v20, "MediaScanner"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "       scan time: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sub-long v22, v15, v13

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "ms (Audio/Video parsing : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mAudioVideoParsingTime:J

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "ms, Image parsing : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mImageParsingTime:J

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "ms)\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    const-string v20, "MediaScanner"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "postscan time: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sub-long v22, v5, v15

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "ms\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    const-string v20, "MediaScanner"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "       total time: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sub-long v22, v5, v17

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "ms\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaScanner;->mImageParsingTime:J

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaScanner;->mAudioVideoParsingTime:J

    .line 1645
    const/16 v20, 0x0

    sput-boolean v20, Landroid/media/MediaScanner;->bIsUpdatingAudioMetadata:Z
    :try_end_315
    .catch Landroid/database/SQLException; {:try_start_15e .. :try_end_315} :catch_156
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_15e .. :try_end_315} :catch_317
    .catch Landroid/os/RemoteException; {:try_start_15e .. :try_end_315} :catch_31a

    goto/16 :goto_157

    .line 1650
    .end local v5           #end:J
    .end local v7           #i:I
    .end local v12           #isScanningExternal:Z
    .end local v13           #prescan:J
    .end local v15           #scan:J
    .end local v17           #start:J
    :catch_317
    move-exception v20

    goto/16 :goto_157

    .line 1654
    :catch_31a
    move-exception v20

    goto/16 :goto_157
.end method

.method public scanMtpFile(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 24
    .parameter "path"
    .parameter "volumeName"
    .parameter "objectHandle"
    .parameter "format"

    .prologue
    .line 1776
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 1777
    invoke-static/range {p1 .. p1}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v16

    .line 1778
    .local v16, mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-nez v16, :cond_72

    const/4 v14, 0x0

    .line 1779
    .local v14, fileType:I
    :goto_e
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1780
    .local v13, file:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    const-wide/16 v7, 0x3e8

    div-long v5, v2, v7

    .line 1782
    .local v5, lastModifiedSeconds:J
    invoke-static {v14}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v2

    if-nez v2, :cond_77

    invoke-static {v14}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v2

    if-nez v2, :cond_77

    invoke-static {v14}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v2

    if-nez v2, :cond_77

    invoke-static {v14}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v2

    if-nez v2, :cond_77

    .line 1786
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 1787
    .local v17, values:Landroid/content/ContentValues;
    const-string v2, "_size"

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1788
    const-string v2, "date_modified"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1790
    const/4 v2, 0x1

    :try_start_55
    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/4 v2, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v18, v2

    .line 1791
    .local v18, whereArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    invoke-static/range {p2 .. p2}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "_id=?"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_71
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_71} :catch_e3

    .line 1828
    .end local v17           #values:Landroid/content/ContentValues;
    .end local v18           #whereArgs:[Ljava/lang/String;
    :goto_71
    return-void

    .line 1778
    .end local v5           #lastModifiedSeconds:J
    .end local v13           #file:Ljava/io/File;
    .end local v14           #fileType:I
    :cond_72
    move-object/from16 v0, v16

    iget v14, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    goto :goto_e

    .line 1800
    .restart local v5       #lastModifiedSeconds:J
    .restart local v13       #file:Ljava/io/File;
    .restart local v14       #fileType:I
    :cond_77
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    .line 1802
    :try_start_7d
    invoke-static {v14}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 1804
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 1806
    move-object/from16 v15, p1

    .line 1807
    .local v15, key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    if-eqz v2, :cond_96

    .line 1808
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    .line 1810
    :cond_96
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/MediaScanner$FileCacheEntry;

    .line 1811
    .local v12, entry:Landroid/media/MediaScanner$FileCacheEntry;
    if-eqz v12, :cond_a7

    .line 1812
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/media/MediaScanner;->processPlayList(Landroid/media/MediaScanner$FileCacheEntry;)V
    :try_end_a7
    .catchall {:try_start_7d .. :try_end_a7} :catchall_dc
    .catch Landroid/os/RemoteException; {:try_start_7d .. :try_end_a7} :catch_d3

    .line 1826
    .end local v12           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v15           #key:Ljava/lang/String;
    :cond_a7
    :goto_a7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    goto :goto_71

    .line 1816
    :cond_ad
    const/4 v2, 0x0

    :try_start_ae
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 1819
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    move-object/from16 v0, v16

    iget-object v4, v0, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v7

    const/16 v3, 0x3001

    move/from16 v0, p4

    if-ne v0, v3, :cond_da

    const/4 v9, 0x1

    :goto_c8
    const/4 v10, 0x1

    invoke-static/range {p1 .. p1}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v11

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v11}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    :try_end_d2
    .catchall {:try_start_ae .. :try_end_d2} :catchall_dc
    .catch Landroid/os/RemoteException; {:try_start_ae .. :try_end_d2} :catch_d3

    goto :goto_a7

    .line 1822
    :catch_d3
    move-exception v2

    .line 1826
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    goto :goto_71

    .line 1819
    :cond_da
    const/4 v9, 0x0

    goto :goto_c8

    .line 1826
    :catchall_dc
    move-exception v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    throw v2

    .line 1793
    .restart local v17       #values:Landroid/content/ContentValues;
    :catch_e3
    move-exception v2

    goto :goto_71
.end method

.method public scanSingleFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 16
    .parameter "path"
    .parameter "volumeName"
    .parameter "mimeType"

    .prologue
    .line 1699
    :try_start_0
    invoke-direct {p0, p2}, Landroid/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 1700
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 1702
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1705
    .local v11, file:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const-wide/16 v5, 0x3e8

    div-long v3, v0, v5

    .line 1708
    .local v3, lastModifiedSeconds:J
    iget-object v0, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v5

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, p1

    move-object v2, p3

    invoke-virtual/range {v0 .. v9}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_22} :catch_24

    move-result-object v0

    .line 1713
    .end local v3           #lastModifiedSeconds:J
    .end local v11           #file:Ljava/io/File;
    :goto_23
    return-object v0

    .line 1710
    :catch_24
    move-exception v10

    .line 1713
    .local v10, e:Landroid/os/RemoteException;
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public setExternalStoragePaths(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "externalSdPath"
    .parameter "usbStoragePath"

    .prologue
    .line 470
    iput-object p1, p0, Landroid/media/MediaScanner;->mExternalStorageSdPath:Ljava/lang/String;

    .line 471
    iput-object p2, p0, Landroid/media/MediaScanner;->mExternalStorageUsbPath:Ljava/lang/String;

    .line 472
    return-void
.end method

.method public native setLocale(Ljava/lang/String;)V
.end method

.method public native setSdCardPathsToNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
