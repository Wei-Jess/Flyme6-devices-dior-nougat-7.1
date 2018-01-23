.class public Lorg/mokee/platform/internal/MKAudioServiceBroker;
.super Lorg/mokee/platform/internal/BrokerableMKSystemService;
.source "MKAudioServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mokee/platform/internal/MKAudioServiceBroker$1;,
        Lorg/mokee/platform/internal/MKAudioServiceBroker$BinderService;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/mokee/platform/internal/BrokerableMKSystemService",
        "<",
        "Lmokee/media/IMKAudioService;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "MKAudioServiceBroker"

.field private static final TARGET_IMPLEMENTATION_COMPONENT:Landroid/content/ComponentName;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mServiceStubForFailure:Lmokee/media/IMKAudioService;


# direct methods
.method static synthetic -get0(Lorg/mokee/platform/internal/MKAudioServiceBroker;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/mokee/platform/internal/MKAudioServiceBroker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lorg/mokee/platform/internal/MKAudioServiceBroker;)V
    .locals 0

    invoke-direct {p0}, Lorg/mokee/platform/internal/MKAudioServiceBroker;->checkPermission()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const-string/jumbo v0, "MKAudioServiceBroker"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lorg/mokee/platform/internal/MKAudioServiceBroker;->DEBUG:Z

    .line 49
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "org.mokee.mkaudio.service"

    .line 50
    const-string/jumbo v2, "org.mokee.mkaudio.service.MKAudioService"

    .line 49
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    sput-object v0, Lorg/mokee/platform/internal/MKAudioServiceBroker;->TARGET_IMPLEMENTATION_COMPONENT:Landroid/content/ComponentName;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/mokee/platform/internal/BrokerableMKSystemService;-><init>(Landroid/content/Context;)V

    .line 95
    new-instance v0, Lorg/mokee/platform/internal/MKAudioServiceBroker$1;

    invoke-direct {v0, p0}, Lorg/mokee/platform/internal/MKAudioServiceBroker$1;-><init>(Lorg/mokee/platform/internal/MKAudioServiceBroker;)V

    iput-object v0, p0, Lorg/mokee/platform/internal/MKAudioServiceBroker;->mServiceStubForFailure:Lmokee/media/IMKAudioService;

    .line 54
    iput-object p1, p0, Lorg/mokee/platform/internal/MKAudioServiceBroker;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method

.method private checkPermission()V
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lorg/mokee/platform/internal/MKAudioServiceBroker;->mContext:Landroid/content/Context;

    .line 87
    const-string/jumbo v1, "mokee.permission.OBSERVE_AUDIO_SESSIONS"

    const/4 v2, 0x0

    .line 86
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method


# virtual methods
.method protected bridge synthetic getDefaultImplementation()Landroid/os/IInterface;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lorg/mokee/platform/internal/MKAudioServiceBroker;->getDefaultImplementation()Lmokee/media/IMKAudioService;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultImplementation()Lmokee/media/IMKAudioService;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/mokee/platform/internal/MKAudioServiceBroker;->mServiceStubForFailure:Lmokee/media/IMKAudioService;

    return-object v0
.end method

.method public getFeatureDeclaration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const-string/jumbo v0, "org.mokee.audio"

    return-object v0
.end method

.method protected bridge synthetic getIBinderAsIInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1
    .param p1, "service"    # Landroid/os/IBinder;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lorg/mokee/platform/internal/MKAudioServiceBroker;->getIBinderAsIInterface(Landroid/os/IBinder;)Lmokee/media/IMKAudioService;

    move-result-object v0

    return-object v0
.end method

.method protected getIBinderAsIInterface(Landroid/os/IBinder;)Lmokee/media/IMKAudioService;
    .locals 1
    .param p1, "service"    # Landroid/os/IBinder;

    .prologue
    .line 72
    invoke-static {p1}, Lmokee/media/IMKAudioService$Stub;->asInterface(Landroid/os/IBinder;)Lmokee/media/IMKAudioService;

    move-result-object v0

    return-object v0
.end method

.method protected getServiceComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lorg/mokee/platform/internal/MKAudioServiceBroker;->TARGET_IMPLEMENTATION_COMPONENT:Landroid/content/ComponentName;

    return-object v0
.end method

.method public onBootPhase(I)V
    .locals 3
    .param p1, "phase"    # I

    .prologue
    .line 59
    invoke-super {p0, p1}, Lorg/mokee/platform/internal/BrokerableMKSystemService;->onBootPhase(I)V

    .line 60
    const/16 v0, 0x258

    if-ne p1, v0, :cond_0

    .line 61
    const-string/jumbo v0, "mkaudio"

    new-instance v1, Lorg/mokee/platform/internal/MKAudioServiceBroker$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/mokee/platform/internal/MKAudioServiceBroker$BinderService;-><init>(Lorg/mokee/platform/internal/MKAudioServiceBroker;Lorg/mokee/platform/internal/MKAudioServiceBroker$BinderService;)V

    invoke-virtual {p0, v0, v1}, Lorg/mokee/platform/internal/MKAudioServiceBroker;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 58
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 67
    sget-boolean v0, Lorg/mokee/platform/internal/MKAudioServiceBroker;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MKAudioServiceBroker"

    const-string/jumbo v1, "service started"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_0
    return-void
.end method
