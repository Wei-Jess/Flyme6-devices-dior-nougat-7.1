.class public final Lmokee/media/MKAudioManager;
.super Ljava/lang/Object;
.source "MKAudioManager.java"


# static fields
.field public static final ACTION_AUDIO_SESSIONS_CHANGED:Ljava/lang/String; = "mokee.intent.action.ACTION_AUDIO_SESSIONS_CHANGED"

.field public static final EXTRA_SESSION_ADDED:Ljava/lang/String; = "added"

.field public static final EXTRA_SESSION_INFO:Ljava/lang/String; = "session_info"

.field private static final TAG:Ljava/lang/String; = "MKAudioManager"

.field private static sInstance:Lmokee/media/MKAudioManager;

.field private static sService:Lmokee/media/IMKAudioService;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 89
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 90
    iput-object v0, p0, Lmokee/media/MKAudioManager;->mContext:Landroid/content/Context;

    .line 95
    :goto_0
    invoke-static {}, Lmokee/media/MKAudioManager;->getService()Lmokee/media/IMKAudioService;

    move-result-object v1

    sput-object v1, Lmokee/media/MKAudioManager;->sService:Lmokee/media/IMKAudioService;

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 98
    const-string/jumbo v2, "org.mokee.audio"

    .line 97
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    invoke-direct {p0}, Lmokee/media/MKAudioManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    :goto_1
    return-void

    .line 92
    :cond_0
    iput-object p1, p0, Lmokee/media/MKAudioManager;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 99
    :cond_1
    const-string/jumbo v1, "MKAudioManager"

    const-string/jumbo v2, "Unable to get MKAudioService. The service either crashed, was not started, or the interface has been called to early in SystemServer init"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private checkService()Z
    .locals 2

    .prologue
    .line 134
    sget-object v0, Lmokee/media/MKAudioManager;->sService:Lmokee/media/IMKAudioService;

    if-nez v0, :cond_0

    .line 135
    const-string/jumbo v0, "MKAudioManager"

    const-string/jumbo v1, "not connected to MKAudioService"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v0, 0x0

    return v0

    .line 138
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lmokee/media/MKAudioManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lmokee/media/MKAudioManager;

    monitor-enter v1

    .line 111
    :try_start_0
    sget-object v0, Lmokee/media/MKAudioManager;->sInstance:Lmokee/media/MKAudioManager;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lmokee/media/MKAudioManager;

    invoke-direct {v0, p0}, Lmokee/media/MKAudioManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lmokee/media/MKAudioManager;->sInstance:Lmokee/media/MKAudioManager;

    .line 114
    :cond_0
    sget-object v0, Lmokee/media/MKAudioManager;->sInstance:Lmokee/media/MKAudioManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getService()Lmokee/media/IMKAudioService;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 119
    sget-object v1, Lmokee/media/MKAudioManager;->sService:Lmokee/media/IMKAudioService;

    if-eqz v1, :cond_0

    .line 120
    sget-object v1, Lmokee/media/MKAudioManager;->sService:Lmokee/media/IMKAudioService;

    return-object v1

    .line 122
    :cond_0
    const-string/jumbo v1, "mkaudio"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 123
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 124
    invoke-static {v0}, Lmokee/media/IMKAudioService$Stub;->asInterface(Landroid/os/IBinder;)Lmokee/media/IMKAudioService;

    move-result-object v1

    sput-object v1, Lmokee/media/MKAudioManager;->sService:Lmokee/media/IMKAudioService;

    .line 125
    sget-object v1, Lmokee/media/MKAudioManager;->sService:Lmokee/media/IMKAudioService;

    return-object v1

    .line 127
    :cond_1
    return-object v2
.end method


# virtual methods
.method public listAudioSessions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmokee/media/AudioSessionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lmokee/media/MKAudioManager;->listAudioSessions(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listAudioSessions(I)Ljava/util/List;
    .locals 4
    .param p1, "streamType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lmokee/media/AudioSessionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    invoke-direct {p0}, Lmokee/media/MKAudioManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    :try_start_0
    sget-object v2, Lmokee/media/MKAudioManager;->sService:Lmokee/media/IMKAudioService;

    invoke-interface {v2, p1}, Lmokee/media/IMKAudioService;->listAudioSessions(I)Ljava/util/List;

    move-result-object v1

    .line 154
    .local v1, "sessions":Ljava/util/List;, "Ljava/util/List<Lmokee/media/AudioSessionInfo;>;"
    if-eqz v1, :cond_0

    .line 155
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 157
    .end local v1    # "sessions":Ljava/util/List;, "Ljava/util/List<Lmokee/media/AudioSessionInfo;>;"
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MKAudioManager"

    const-string/jumbo v3, "Failed to list audio sessions!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method
