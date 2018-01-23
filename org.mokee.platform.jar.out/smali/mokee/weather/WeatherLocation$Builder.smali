.class public Lmokee/weather/WeatherLocation$Builder;
.super Ljava/lang/Object;
.source "WeatherLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/weather/WeatherLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mCity:Ljava/lang/String;

.field mCityId:Ljava/lang/String;

.field mCountry:Ljava/lang/String;

.field mCountryId:Ljava/lang/String;

.field mPostal:Ljava/lang/String;

.field mState:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "cityName"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmokee/weather/WeatherLocation$Builder;->mCityId:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmokee/weather/WeatherLocation$Builder;->mCity:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmokee/weather/WeatherLocation$Builder;->mState:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmokee/weather/WeatherLocation$Builder;->mPostal:Ljava/lang/String;

    .line 55
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmokee/weather/WeatherLocation$Builder;->mCountryId:Ljava/lang/String;

    .line 56
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmokee/weather/WeatherLocation$Builder;->mCountry:Ljava/lang/String;

    .line 74
    if-nez p1, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "City name can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    iput-object p1, p0, Lmokee/weather/WeatherLocation$Builder;->mCity:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "cityId"    # Ljava/lang/String;
    .param p2, "cityName"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmokee/weather/WeatherLocation$Builder;->mCityId:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmokee/weather/WeatherLocation$Builder;->mCity:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmokee/weather/WeatherLocation$Builder;->mState:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmokee/weather/WeatherLocation$Builder;->mPostal:Ljava/lang/String;

    .line 55
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmokee/weather/WeatherLocation$Builder;->mCountryId:Ljava/lang/String;

    .line 56
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmokee/weather/WeatherLocation$Builder;->mCountry:Ljava/lang/String;

    .line 63
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal to set city id AND city to null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1
    iput-object p1, p0, Lmokee/weather/WeatherLocation$Builder;->mCityId:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lmokee/weather/WeatherLocation$Builder;->mCity:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public build()Lmokee/weather/WeatherLocation;
    .locals 2

    .prologue
    .line 135
    new-instance v0, Lmokee/weather/WeatherLocation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmokee/weather/WeatherLocation;-><init>(Lmokee/weather/WeatherLocation;)V

    .line 136
    .local v0, "weatherLocation":Lmokee/weather/WeatherLocation;
    iget-object v1, p0, Lmokee/weather/WeatherLocation$Builder;->mCityId:Ljava/lang/String;

    invoke-static {v0, v1}, Lmokee/weather/WeatherLocation;->-set1(Lmokee/weather/WeatherLocation;Ljava/lang/String;)Ljava/lang/String;

    .line 137
    iget-object v1, p0, Lmokee/weather/WeatherLocation$Builder;->mCity:Ljava/lang/String;

    invoke-static {v0, v1}, Lmokee/weather/WeatherLocation;->-set0(Lmokee/weather/WeatherLocation;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    iget-object v1, p0, Lmokee/weather/WeatherLocation$Builder;->mState:Ljava/lang/String;

    invoke-static {v0, v1}, Lmokee/weather/WeatherLocation;->-set6(Lmokee/weather/WeatherLocation;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    iget-object v1, p0, Lmokee/weather/WeatherLocation$Builder;->mPostal:Ljava/lang/String;

    invoke-static {v0, v1}, Lmokee/weather/WeatherLocation;->-set5(Lmokee/weather/WeatherLocation;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    iget-object v1, p0, Lmokee/weather/WeatherLocation$Builder;->mCountryId:Ljava/lang/String;

    invoke-static {v0, v1}, Lmokee/weather/WeatherLocation;->-set3(Lmokee/weather/WeatherLocation;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    iget-object v1, p0, Lmokee/weather/WeatherLocation$Builder;->mCountry:Ljava/lang/String;

    invoke-static {v0, v1}, Lmokee/weather/WeatherLocation;->-set2(Lmokee/weather/WeatherLocation;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmokee/weather/WeatherLocation;->-set4(Lmokee/weather/WeatherLocation;Ljava/lang/String;)Ljava/lang/String;

    .line 143
    return-object v0
.end method

.method public setCountry(Ljava/lang/String;)Lmokee/weather/WeatherLocation$Builder;
    .locals 2
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 98
    if-nez p1, :cond_0

    .line 99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Country can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    iput-object p1, p0, Lmokee/weather/WeatherLocation$Builder;->mCountry:Ljava/lang/String;

    .line 102
    return-object p0
.end method

.method public setCountryId(Ljava/lang/String;)Lmokee/weather/WeatherLocation$Builder;
    .locals 2
    .param p1, "countryId"    # Ljava/lang/String;

    .prologue
    .line 86
    if-nez p1, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Country ID can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    iput-object p1, p0, Lmokee/weather/WeatherLocation$Builder;->mCountryId:Ljava/lang/String;

    .line 90
    return-object p0
.end method

.method public setPostalCode(Ljava/lang/String;)Lmokee/weather/WeatherLocation$Builder;
    .locals 2
    .param p1, "postalCode"    # Ljava/lang/String;

    .prologue
    .line 110
    if-nez p1, :cond_0

    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Postal code/ZIP can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    iput-object p1, p0, Lmokee/weather/WeatherLocation$Builder;->mPostal:Ljava/lang/String;

    .line 114
    return-object p0
.end method

.method public setState(Ljava/lang/String;)Lmokee/weather/WeatherLocation$Builder;
    .locals 2
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 122
    if-nez p1, :cond_0

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "State can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    iput-object p1, p0, Lmokee/weather/WeatherLocation$Builder;->mState:Ljava/lang/String;

    .line 126
    return-object p0
.end method
