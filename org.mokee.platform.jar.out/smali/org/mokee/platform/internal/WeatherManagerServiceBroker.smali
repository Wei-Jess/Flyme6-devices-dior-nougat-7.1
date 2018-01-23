.class public Lorg/mokee/platform/internal/WeatherManagerServiceBroker;
.super Lorg/mokee/platform/internal/BrokerableMKSystemService;
.source "WeatherManagerServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mokee/platform/internal/WeatherManagerServiceBroker$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/mokee/platform/internal/BrokerableMKSystemService",
        "<",
        "Lmokee/weather/IMKWeatherManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final TARGET_IMPLEMENTATION_COMPONENT:Landroid/content/ComponentName;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mService:Landroid/os/IBinder;


# direct methods
.method static synthetic -wrap0(Lorg/mokee/platform/internal/WeatherManagerServiceBroker;)V
    .locals 0

    invoke-direct {p0}, Lorg/mokee/platform/internal/WeatherManagerServiceBroker;->enforcePermission()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "org.mokee.weatherservice"

    .line 37
    const-string/jumbo v2, "org.mokee.weatherservice.WeatherManagerService"

    .line 36
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    sput-object v0, Lorg/mokee/platform/internal/WeatherManagerServiceBroker;->TARGET_IMPLEMENTATION_COMPONENT:Landroid/content/ComponentName;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lorg/mokee/platform/internal/BrokerableMKSystemService;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Lorg/mokee/platform/internal/WeatherManagerServiceBroker$1;

    invoke-direct {v0, p0}, Lorg/mokee/platform/internal/WeatherManagerServiceBroker$1;-><init>(Lorg/mokee/platform/internal/WeatherManagerServiceBroker;)V

    iput-object v0, p0, Lorg/mokee/platform/internal/WeatherManagerServiceBroker;->mService:Landroid/os/IBinder;

    .line 87
    iput-object p1, p0, Lorg/mokee/platform/internal/WeatherManagerServiceBroker;->mContext:Landroid/content/Context;

    .line 85
    return-void
.end method

.method private enforcePermission()V
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lorg/mokee/platform/internal/WeatherManagerServiceBroker;->mContext:Landroid/content/Context;

    .line 41
    const-string/jumbo v1, "mokee.permission.ACCESS_WEATHER_MANAGER"

    const/4 v2, 0x0

    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected bridge synthetic getDefaultImplementation()Landroid/os/IInterface;
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lorg/mokee/platform/internal/WeatherManagerServiceBroker;->getDefaultImplementation()Lmokee/weather/IMKWeatherManager;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultImplementation()Lmokee/weather/IMKWeatherManager;
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lmokee/weather/IMKWeatherManager$NoOp;

    invoke-direct {v0}, Lmokee/weather/IMKWeatherManager$NoOp;-><init>()V

    return-object v0
.end method

.method public getFeatureDeclaration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const-string/jumbo v0, "org.mokee.weather"

    return-object v0
.end method

.method protected bridge synthetic getIBinderAsIInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1
    .param p1, "service"    # Landroid/os/IBinder;

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lorg/mokee/platform/internal/WeatherManagerServiceBroker;->getIBinderAsIInterface(Landroid/os/IBinder;)Lmokee/weather/IMKWeatherManager;

    move-result-object v0

    return-object v0
.end method

.method protected getIBinderAsIInterface(Landroid/os/IBinder;)Lmokee/weather/IMKWeatherManager;
    .locals 1
    .param p1, "service"    # Landroid/os/IBinder;

    .prologue
    .line 113
    invoke-static {p1}, Lmokee/weather/IMKWeatherManager$Stub;->asInterface(Landroid/os/IBinder;)Lmokee/weather/IMKWeatherManager;

    move-result-object v0

    return-object v0
.end method

.method protected getServiceComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lorg/mokee/platform/internal/WeatherManagerServiceBroker;->TARGET_IMPLEMENTATION_COMPONENT:Landroid/content/ComponentName;

    return-object v0
.end method

.method public onBootPhase(I)V
    .locals 0
    .param p1, "phase"    # I

    .prologue
    .line 91
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 108
    const-string/jumbo v0, "mkweather"

    iget-object v1, p0, Lorg/mokee/platform/internal/WeatherManagerServiceBroker;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lorg/mokee/platform/internal/WeatherManagerServiceBroker;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 107
    return-void
.end method

.method public onUnlockUser(I)V
    .locals 0
    .param p1, "userHandle"    # I

    .prologue
    .line 98
    invoke-virtual {p0}, Lorg/mokee/platform/internal/WeatherManagerServiceBroker;->tryConnecting()V

    .line 97
    return-void
.end method
