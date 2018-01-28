.class public abstract Lmokee/weatherservice/WeatherProviderService;
.super Landroid/app/Service;
.source "WeatherProviderService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmokee/weatherservice/WeatherProviderService$1;,
        Lmokee/weatherservice/WeatherProviderService$ServiceHandler;
    }
.end annotation


# static fields
.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "mokee.weatherservice.WeatherProviderService"

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "mokee.weatherservice"


# instance fields
.field private final mBinder:Lmokee/weatherservice/IWeatherProviderService$Stub;

.field private mClient:Lmokee/weatherservice/IWeatherProviderServiceClient;

.field private mHandler:Landroid/os/Handler;

.field private mWeakRequestsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lmokee/weatherservice/ServiceRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lmokee/weatherservice/WeatherProviderService;)Lmokee/weatherservice/IWeatherProviderServiceClient;
    .locals 1

    iget-object v0, p0, Lmokee/weatherservice/WeatherProviderService;->mClient:Lmokee/weatherservice/IWeatherProviderServiceClient;

    return-object v0
.end method

.method static synthetic -get1(Lmokee/weatherservice/WeatherProviderService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lmokee/weatherservice/WeatherProviderService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lmokee/weatherservice/WeatherProviderService;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lmokee/weatherservice/WeatherProviderService;->mWeakRequestsSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -set0(Lmokee/weatherservice/WeatherProviderService;Lmokee/weatherservice/IWeatherProviderServiceClient;)Lmokee/weatherservice/IWeatherProviderServiceClient;
    .locals 0

    iput-object p1, p0, Lmokee/weatherservice/WeatherProviderService;->mClient:Lmokee/weatherservice/IWeatherProviderServiceClient;

    return-object p1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 64
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    .line 63
    iput-object v0, p0, Lmokee/weatherservice/WeatherProviderService;->mWeakRequestsSet:Ljava/util/Set;

    .line 93
    new-instance v0, Lmokee/weatherservice/WeatherProviderService$1;

    invoke-direct {v0, p0}, Lmokee/weatherservice/WeatherProviderService$1;-><init>(Lmokee/weatherservice/WeatherProviderService;)V

    iput-object v0, p0, Lmokee/weatherservice/WeatherProviderService;->mBinder:Lmokee/weatherservice/IWeatherProviderService$Stub;

    .line 59
    return-void
.end method


# virtual methods
.method protected final attachBaseContext(Landroid/content/Context;)V
    .locals 2
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    .line 85
    new-instance v0, Lmokee/weatherservice/WeatherProviderService$ServiceHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lmokee/weatherservice/WeatherProviderService$ServiceHandler;-><init>(Lmokee/weatherservice/WeatherProviderService;Landroid/os/Looper;)V

    iput-object v0, p0, Lmokee/weatherservice/WeatherProviderService;->mHandler:Landroid/os/Handler;

    .line 83
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 90
    iget-object v0, p0, Lmokee/weatherservice/WeatherProviderService;->mBinder:Lmokee/weatherservice/IWeatherProviderService$Stub;

    return-object v0
.end method

.method protected onConnected()V
    .locals 0

    .prologue
    .line 182
    return-void
.end method

.method protected onDisconnected()V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.method protected abstract onRequestCancelled(Lmokee/weatherservice/ServiceRequest;)V
.end method

.method protected abstract onRequestSubmitted(Lmokee/weatherservice/ServiceRequest;)V
.end method
