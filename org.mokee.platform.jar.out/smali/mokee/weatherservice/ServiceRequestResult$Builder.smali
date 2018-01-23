.class public Lmokee/weatherservice/ServiceRequestResult$Builder;
.super Ljava/lang/Object;
.source "ServiceRequestResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/weatherservice/ServiceRequestResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mLocationLookupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmokee/weather/WeatherLocation;",
            ">;"
        }
    .end annotation
.end field

.field private mWeatherInfo:Lmokee/weather/WeatherInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object v0, p0, Lmokee/weatherservice/ServiceRequestResult$Builder;->mWeatherInfo:Lmokee/weather/WeatherInfo;

    .line 125
    iput-object v0, p0, Lmokee/weatherservice/ServiceRequestResult$Builder;->mLocationLookupList:Ljava/util/List;

    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmokee/weather/WeatherLocation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "locations":Ljava/util/List;, "Ljava/util/List<Lmokee/weather/WeatherLocation;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    if-nez p1, :cond_0

    .line 145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Weather location list can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    iput-object p1, p0, Lmokee/weatherservice/ServiceRequestResult$Builder;->mLocationLookupList:Ljava/util/List;

    .line 143
    return-void
.end method

.method public constructor <init>(Lmokee/weather/WeatherInfo;)V
    .locals 2
    .param p1, "weatherInfo"    # Lmokee/weather/WeatherInfo;

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    if-nez p1, :cond_0

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "WeatherInfo can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    iput-object p1, p0, Lmokee/weatherservice/ServiceRequestResult$Builder;->mWeatherInfo:Lmokee/weather/WeatherInfo;

    .line 132
    return-void
.end method


# virtual methods
.method public build()Lmokee/weatherservice/ServiceRequestResult;
    .locals 2

    .prologue
    .line 156
    new-instance v0, Lmokee/weatherservice/ServiceRequestResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmokee/weatherservice/ServiceRequestResult;-><init>(Lmokee/weatherservice/ServiceRequestResult;)V

    .line 157
    .local v0, "result":Lmokee/weatherservice/ServiceRequestResult;
    iget-object v1, p0, Lmokee/weatherservice/ServiceRequestResult$Builder;->mWeatherInfo:Lmokee/weather/WeatherInfo;

    invoke-static {v0, v1}, Lmokee/weatherservice/ServiceRequestResult;->-set2(Lmokee/weatherservice/ServiceRequestResult;Lmokee/weather/WeatherInfo;)Lmokee/weather/WeatherInfo;

    .line 158
    iget-object v1, p0, Lmokee/weatherservice/ServiceRequestResult$Builder;->mLocationLookupList:Ljava/util/List;

    invoke-static {v0, v1}, Lmokee/weatherservice/ServiceRequestResult;->-set1(Lmokee/weatherservice/ServiceRequestResult;Ljava/util/List;)Ljava/util/List;

    .line 159
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmokee/weatherservice/ServiceRequestResult;->-set0(Lmokee/weatherservice/ServiceRequestResult;Ljava/lang/String;)Ljava/lang/String;

    .line 160
    return-object v0
.end method
