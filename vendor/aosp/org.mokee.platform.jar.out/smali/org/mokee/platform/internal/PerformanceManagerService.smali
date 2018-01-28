.class public Lorg/mokee/platform/internal/PerformanceManagerService;
.super Lorg/mokee/platform/internal/MKSystemService;
.source "PerformanceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mokee/platform/internal/PerformanceManagerService$1;,
        Lorg/mokee/platform/internal/PerformanceManagerService$2;,
        Lorg/mokee/platform/internal/PerformanceManagerService$3;,
        Lorg/mokee/platform/internal/PerformanceManagerService$BoostHandler;,
        Lorg/mokee/platform/internal/PerformanceManagerService$BoostLog;,
        Lorg/mokee/platform/internal/PerformanceManagerService$LocalService;,
        Lorg/mokee/platform/internal/PerformanceManagerService$PerformanceSettingsObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_CPU_BOOST_TIME:I = 0x4c4b40

.field private static final MSG_CPU_BOOST:I = 0x1

.field private static final MSG_SET_PROFILE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PerformanceManager"

.field private static final WEIGHT_BALANCED:F = 0.5f

.field private static final WEIGHT_HIGH_PERFORMANCE:F = 1.0f

.field private static final WEIGHT_POWER_SAVE:F


# instance fields
.field private final POWER_FEATURE_SUPPORTED_PROFILES:I

.field private final POWER_HINT_CPU_BOOST:I

.field private final POWER_HINT_SET_PROFILE:I

.field private mActiveProfile:I

.field private final mAppProfiles:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mBinder:Landroid/os/IBinder;

.field private mBoostEnabled:Z

.field private final mBoostLog:Lorg/mokee/platform/internal/PerformanceManagerService$BoostLog;

.field private final mContext:Landroid/content/Context;

.field private mCurrentActivityName:Ljava/lang/String;

.field private final mHandler:Lorg/mokee/platform/internal/PerformanceManagerService$BoostHandler;

.field private final mHandlerThread:Lcom/android/server/ServiceThread;

.field private final mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mLock:Ljava/lang/Object;

.field private mLowPowerModeEnabled:Z

.field private final mLowPowerModeListener:Landroid/os/PowerManagerInternal$LowPowerModeListener;

.field private mNumProfiles:I

.field private mObserver:Lorg/mokee/platform/internal/PerformanceManagerService$PerformanceSettingsObserver;

.field private mPm:Landroid/os/PowerManagerInternal;

.field private final mProfiles:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Lmokee/power/PerformanceProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemReady:Z

.field private mUserProfile:I


# direct methods
.method static synthetic -get0(Lorg/mokee/platform/internal/PerformanceManagerService;)I
    .locals 1

    iget v0, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mActiveProfile:I

    return v0
.end method

.method static synthetic -get1(Lorg/mokee/platform/internal/PerformanceManagerService;)Ljava/util/LinkedHashMap;
    .locals 1

    iget-object v0, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mAppProfiles:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic -get10(Lorg/mokee/platform/internal/PerformanceManagerService;)I
    .locals 1

    iget v0, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mUserProfile:I

    return v0
.end method

.method static synthetic -get2(Lorg/mokee/platform/internal/PerformanceManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mBoostEnabled:Z

    return v0
.end method

.method static synthetic -get3(Lorg/mokee/platform/internal/PerformanceManagerService;)Lorg/mokee/platform/internal/PerformanceManagerService$BoostLog;
    .locals 1

    iget-object v0, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mBoostLog:Lorg/mokee/platform/internal/PerformanceManagerService$BoostLog;

    return-object v0
.end method

.method static synthetic -get4(Lorg/mokee/platform/internal/PerformanceManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lorg/mokee/platform/internal/PerformanceManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get6(Lorg/mokee/platform/internal/PerformanceManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mLowPowerModeEnabled:Z

    return v0
.end method

.method static synthetic -get7(Lorg/mokee/platform/internal/PerformanceManagerService;)I
    .locals 1

    iget v0, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mNumProfiles:I

    return v0
.end method

.method static synthetic -get8(Lorg/mokee/platform/internal/PerformanceManagerService;)Landroid/os/PowerManagerInternal;
    .locals 1

    iget-object v0, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mPm:Landroid/os/PowerManagerInternal;

    return-object v0
.end method

.method static synthetic -get9(Lorg/mokee/platform/internal/PerformanceManagerService;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mProfiles:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic -set0(Lorg/mokee/platform/internal/PerformanceManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mBoostEnabled:Z

    return p1
.end method

.method static synthetic -set1(Lorg/mokee/platform/internal/PerformanceManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mCurrentActivityName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lorg/mokee/platform/internal/PerformanceManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mLowPowerModeEnabled:Z

    return p1
.end method

.method static synthetic -set3(Lorg/mokee/platform/internal/PerformanceManagerService;I)I
    .locals 0

    iput p1, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mUserProfile:I

    return p1
.end method

.method static synthetic -wrap0(Lorg/mokee/platform/internal/PerformanceManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lorg/mokee/platform/internal/PerformanceManagerService;->hasAppProfiles()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lorg/mokee/platform/internal/PerformanceManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lorg/mokee/platform/internal/PerformanceManagerService;->hasProfiles()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lorg/mokee/platform/internal/PerformanceManagerService;IZ)Z
    .locals 1
    .param p1, "profile"    # I
    .param p2, "fromUser"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/mokee/platform/internal/PerformanceManagerService;->setPowerProfileLocked(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lorg/mokee/platform/internal/PerformanceManagerService;)V
    .locals 0

    invoke-direct {p0}, Lorg/mokee/platform/internal/PerformanceManagerService;->applyAppProfileLocked()V

    return-void
.end method

.method static synthetic -wrap4(Lorg/mokee/platform/internal/PerformanceManagerService;I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    invoke-direct {p0, p1}, Lorg/mokee/platform/internal/PerformanceManagerService;->cpuBoostInternal(I)V

    return-void
.end method

.method static synthetic -wrap5(Lorg/mokee/platform/internal/PerformanceManagerService;)V
    .locals 0

    invoke-direct {p0}, Lorg/mokee/platform/internal/PerformanceManagerService;->populateProfilesLocked()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 123
    invoke-direct {p0, p1}, Lorg/mokee/platform/internal/MKSystemService;-><init>(Landroid/content/Context;)V

    .line 77
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v4, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mAppProfiles:Ljava/util/LinkedHashMap;

    .line 78
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mProfiles:Landroid/util/ArrayMap;

    .line 80
    iput v7, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mNumProfiles:I

    .line 86
    const/16 v4, 0x110

    iput v4, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->POWER_HINT_CPU_BOOST:I

    .line 87
    const/16 v4, 0x111

    iput v4, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->POWER_HINT_SET_PROFILE:I

    .line 89
    const/16 v4, 0x1000

    iput v4, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->POWER_FEATURE_SUPPORTED_PROFILES:I

    .line 105
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mLock:Ljava/lang/Object;

    .line 108
    iput-boolean v7, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mLowPowerModeEnabled:Z

    .line 109
    iput-boolean v7, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mSystemReady:Z

    .line 110
    iput-boolean v8, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mBoostEnabled:Z

    .line 111
    iput v6, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mUserProfile:I

    .line 112
    iput v6, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mActiveProfile:I

    .line 113
    iput-object v5, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mCurrentActivityName:Ljava/lang/String;

    .line 116
    new-instance v4, Lorg/mokee/platform/internal/PerformanceManagerService$BoostLog;

    invoke-direct {v4, v5}, Lorg/mokee/platform/internal/PerformanceManagerService$BoostLog;-><init>(Lorg/mokee/platform/internal/PerformanceManagerService$BoostLog;)V

    iput-object v4, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mBoostLog:Lorg/mokee/platform/internal/PerformanceManagerService$BoostLog;

    .line 380
    new-instance v4, Lorg/mokee/platform/internal/PerformanceManagerService$1;

    invoke-direct {v4, p0}, Lorg/mokee/platform/internal/PerformanceManagerService$1;-><init>(Lorg/mokee/platform/internal/PerformanceManagerService;)V

    iput-object v4, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mBinder:Landroid/os/IBinder;

    .line 562
    new-instance v4, Lorg/mokee/platform/internal/PerformanceManagerService$2;

    invoke-direct {v4, p0}, Lorg/mokee/platform/internal/PerformanceManagerService$2;-><init>(Lorg/mokee/platform/internal/PerformanceManagerService;)V

    iput-object v4, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mLowPowerModeListener:Landroid/os/PowerManagerInternal$LowPowerModeListener;

    .line 580
    new-instance v4, Lorg/mokee/platform/internal/PerformanceManagerService$3;

    invoke-direct {v4, p0}, Lorg/mokee/platform/internal/PerformanceManagerService$3;-><init>(Lorg/mokee/platform/internal/PerformanceManagerService;)V

    iput-object v4, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 125
    iput-object p1, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mContext:Landroid/content/Context;

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 128
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x3f04000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "activities":[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v4, v0

    if-lez v4, :cond_1

    .line 130
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_1

    .line 131
    aget-object v4, v0, v1

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "info":[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 133
    iget-object v4, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mAppProfiles:Ljava/util/LinkedHashMap;

    aget-object v5, v2, v7

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    aget-object v6, v2, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    .end local v1    # "i":I
    .end local v2    # "info":[Ljava/lang/String;
    :cond_1
    new-instance v4, Lcom/android/server/ServiceThread;

    const-string/jumbo v5, "PerformanceManager"

    .line 145
    const/4 v6, -0x4

    .line 144
    invoke-direct {v4, v5, v6, v7}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v4, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 146
    iget-object v4, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v4}, Lcom/android/server/ServiceThread;->start()V

    .line 148
    new-instance v4, Lorg/mokee/platform/internal/PerformanceManagerService$BoostHandler;

    iget-object v5, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v5}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lorg/mokee/platform/internal/PerformanceManagerService$BoostHandler;-><init>(Lorg/mokee/platform/internal/PerformanceManagerService;Landroid/os/Looper;)V

    iput-object v4, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mHandler:Lorg/mokee/platform/internal/PerformanceManagerService$BoostHandler;

    .line 122
    return-void
.end method

.method private applyAppProfileLocked()V
    .locals 2

    .prologue
    .line 362
    invoke-direct {p0}, Lorg/mokee/platform/internal/PerformanceManagerService;->hasProfiles()Z

    move-result v1

    if-nez v1, :cond_0

    .line 364
    return-void

    .line 368
    :cond_0
    iget-boolean v1, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mLowPowerModeEnabled:Z

    if-eqz v1, :cond_1

    .line 370
    const/4 v0, 0x0

    .line 377
    .local v0, "profile":I
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/mokee/platform/internal/PerformanceManagerService;->setPowerProfileLocked(IZ)Z

    .line 361
    return-void

    .line 371
    .end local v0    # "profile":I
    :cond_1
    invoke-direct {p0}, Lorg/mokee/platform/internal/PerformanceManagerService;->hasAppProfiles()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 372
    iget-object v1, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mCurrentActivityName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/mokee/platform/internal/PerformanceManagerService;->getProfileForActivity(Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "profile":I
    goto :goto_0

    .line 374
    .end local v0    # "profile":I
    :cond_2
    iget v0, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mUserProfile:I

    .restart local v0    # "profile":I
    goto :goto_0
.end method

.method private cpuBoostInternal(I)V
    .locals 3
    .param p1, "duration"    # I

    .prologue
    const/4 v2, 0x0

    .line 345
    iget-boolean v0, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 346
    const-string/jumbo v0, "PerformanceManager"

    const-string/jumbo v1, "System is not ready, dropping cpu boost request"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return-void

    .line 350
    :cond_0
    iget-boolean v0, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mBoostEnabled:Z

    if-nez v0, :cond_1

    .line 351
    return-void

    .line 354
    :cond_1
    if-lez p1, :cond_2

    const v0, 0x4c4b40

    if-gt p1, v0, :cond_2

    .line 355
    iget-object v0, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mHandler:Lorg/mokee/platform/internal/PerformanceManagerService$BoostHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lorg/mokee/platform/internal/PerformanceManagerService$BoostHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 344
    :goto_0
    return-void

    .line 357
    :cond_2
    const-string/jumbo v0, "PerformanceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid boost duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getProfileForActivity(Ljava/lang/String;)I
    .locals 4
    .param p1, "componentName"    # Ljava/lang/String;

    .prologue
    .line 324
    const/4 v2, -0x1

    .line 325
    .local v2, "profile":I
    if-eqz p1, :cond_1

    .line 326
    iget-object v3, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mAppProfiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 327
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/regex/Pattern;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 328
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 336
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/regex/Pattern;Ljava/lang/Integer;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    :cond_1
    if-gez v2, :cond_2

    iget v2, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mUserProfile:I

    .end local v2    # "profile":I
    :cond_2
    return v2
.end method

.method private hasAppProfiles()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 257
    invoke-direct {p0}, Lorg/mokee/platform/internal/PerformanceManagerService;->hasProfiles()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mBoostEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mAppProfiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private hasProfiles()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 253
    iget v1, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mNumProfiles:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private populateProfilesLocked()V
    .locals 14

    .prologue
    .line 208
    iget-object v0, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mProfiles:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 210
    iget-object v0, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 211
    .local v11, "res":Landroid/content/res/Resources;
    const/high16 v0, 0x3f040000    # 0.515625f

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 212
    .local v9, "profileNames":[Ljava/lang/String;
    const v0, 0x3f040001

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    .line 213
    .local v8, "profileIds":[I
    const v0, 0x3f040002

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 214
    .local v10, "profileWeights":[Ljava/lang/String;
    const v0, 0x3f040003

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 216
    .local v7, "profileDescs":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v0, v8

    if-ge v6, v0, :cond_1

    .line 217
    aget v0, v8, v6

    iget v1, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mNumProfiles:I

    if-lt v0, v1, :cond_0

    .line 216
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 220
    :cond_0
    aget-object v0, v10, v6

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 221
    .local v2, "weight":F
    iget-object v12, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mProfiles:Landroid/util/ArrayMap;

    aget v0, v8, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-instance v0, Lmokee/power/PerformanceProfile;

    aget v1, v8, v6

    .line 222
    aget-object v3, v9, v6

    aget-object v4, v7, v6

    invoke-static {v2}, Lorg/mokee/platform/internal/PerformanceManagerService;->shouldUseOptimizations(F)Z

    move-result v5

    .line 221
    invoke-direct/range {v0 .. v5}, Lmokee/power/PerformanceProfile;-><init>(IFLjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v12, v13, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 207
    .end local v2    # "weight":F
    :cond_1
    return-void
.end method

.method private setPowerProfileLocked(IZ)Z
    .locals 8
    .param p1, "profile"    # I
    .param p2, "fromUser"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 274
    iget-boolean v5, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mSystemReady:Z

    if-nez v5, :cond_0

    .line 275
    const-string/jumbo v4, "PerformanceManager"

    const-string/jumbo v5, "System is not ready, dropping profile request"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    return v1

    .line 279
    :cond_0
    iget-object v5, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mProfiles:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 280
    const-string/jumbo v4, "PerformanceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid profile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return v1

    .line 284
    :cond_1
    iget v5, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mActiveProfile:I

    if-ne p1, v5, :cond_4

    move v0, v4

    .line 286
    .local v0, "isProfileSame":Z
    :goto_0
    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 287
    iget v5, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mActiveProfile:I

    if-nez v5, :cond_2

    .line 288
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 289
    .local v2, "token":J
    iget-object v5, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mPm:Landroid/os/PowerManagerInternal;

    invoke-virtual {v5, v1}, Landroid/os/PowerManagerInternal;->setPowerSaveMode(Z)Z

    .line 290
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 298
    .end local v2    # "token":J
    :cond_2
    if-eqz p2, :cond_3

    .line 299
    iget-object v5, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "performance_profile"

    invoke-static {v5, v6, p1}, Lmokee/providers/MKSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 300
    iput p1, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mUserProfile:I

    .line 303
    :cond_3
    if-eqz v0, :cond_5

    .line 304
    return v1

    .end local v0    # "isProfileSame":Z
    :cond_4
    move v0, v1

    .line 284
    goto :goto_0

    .line 308
    .restart local v0    # "isProfileSame":Z
    :cond_5
    iget-object v5, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mContext:Landroid/content/Context;

    .line 309
    const-string/jumbo v6, "mokee.permission.PERFORMANCE_ACCESS"

    const/4 v7, 0x0

    .line 308
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 313
    .restart local v2    # "token":J
    iput p1, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mActiveProfile:I

    .line 315
    iget-object v5, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mHandler:Lorg/mokee/platform/internal/PerformanceManagerService$BoostHandler;

    .line 316
    if-eqz p2, :cond_6

    move v1, v4

    .line 315
    :cond_6
    const/4 v6, 0x2

    invoke-virtual {v5, v6, p1, v1}, Lorg/mokee/platform/internal/PerformanceManagerService$BoostHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 318
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 320
    return v4
.end method

.method private static shouldUseOptimizations(F)Z
    .locals 2
    .param p0, "weight"    # F

    .prologue
    const/4 v0, 0x0

    .line 340
    const/high16 v1, 0x3e800000    # 0.25f

    cmpl-float v1, p0, v1

    if-ltz v1, :cond_0

    .line 341
    const/high16 v1, 0x3f400000    # 0.75f

    cmpg-float v1, p0, v1

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    .line 340
    :cond_0
    return v0
.end method


# virtual methods
.method public getFeatureDeclaration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    const-string/jumbo v0, "org.mokee.performance"

    return-object v0
.end method

.method public onBootPhase(I)V
    .locals 5
    .param p1, "phase"    # I

    .prologue
    .line 228
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mSystemReady:Z

    if-eqz v0, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    iget-object v1, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 230
    :try_start_0
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-virtual {p0, v0}, Lorg/mokee/platform/internal/PerformanceManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mPm:Landroid/os/PowerManagerInternal;

    .line 231
    iget-object v0, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mPm:Landroid/os/PowerManagerInternal;

    const/16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/os/PowerManagerInternal;->getFeature(I)I

    move-result v0

    iput v0, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mNumProfiles:I

    .line 233
    invoke-direct {p0}, Lorg/mokee/platform/internal/PerformanceManagerService;->hasProfiles()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    invoke-direct {p0}, Lorg/mokee/platform/internal/PerformanceManagerService;->populateProfilesLocked()V

    .line 236
    new-instance v0, Lorg/mokee/platform/internal/PerformanceManagerService$PerformanceSettingsObserver;

    iget-object v2, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mHandler:Lorg/mokee/platform/internal/PerformanceManagerService$BoostHandler;

    invoke-direct {v0, p0, v2, v3}, Lorg/mokee/platform/internal/PerformanceManagerService$PerformanceSettingsObserver;-><init>(Lorg/mokee/platform/internal/PerformanceManagerService;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mObserver:Lorg/mokee/platform/internal/PerformanceManagerService$PerformanceSettingsObserver;

    .line 237
    iget-object v0, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mObserver:Lorg/mokee/platform/internal/PerformanceManagerService$PerformanceSettingsObserver;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/mokee/platform/internal/PerformanceManagerService$PerformanceSettingsObserver;->observe(Z)V

    .line 240
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mSystemReady:Z

    .line 242
    invoke-direct {p0}, Lorg/mokee/platform/internal/PerformanceManagerService;->hasProfiles()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 243
    iget v0, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mUserProfile:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lorg/mokee/platform/internal/PerformanceManagerService;->setPowerProfileLocked(IZ)Z

    .line 244
    iget-object v0, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mPm:Landroid/os/PowerManagerInternal;

    iget-object v2, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mLowPowerModeListener:Landroid/os/PowerManagerInternal$LowPowerModeListener;

    invoke-virtual {v0, v2}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 245
    iget-object v0, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 246
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v1

    goto :goto_0

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 203
    const-string/jumbo v0, "mkperformance"

    iget-object v1, p0, Lorg/mokee/platform/internal/PerformanceManagerService;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lorg/mokee/platform/internal/PerformanceManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 204
    const-class v0, Lmokee/power/PerformanceManagerInternal;

    new-instance v1, Lorg/mokee/platform/internal/PerformanceManagerService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/mokee/platform/internal/PerformanceManagerService$LocalService;-><init>(Lorg/mokee/platform/internal/PerformanceManagerService;Lorg/mokee/platform/internal/PerformanceManagerService$LocalService;)V

    invoke-virtual {p0, v0, v1}, Lorg/mokee/platform/internal/PerformanceManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 202
    return-void
.end method
