.class final Lmokee/weather/WeatherLocation$1;
.super Ljava/lang/Object;
.source "WeatherLocation.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/weather/WeatherLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lmokee/weather/WeatherLocation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 212
    invoke-virtual {p0, p1}, Lmokee/weather/WeatherLocation$1;->createFromParcel(Landroid/os/Parcel;)Lmokee/weather/WeatherLocation;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmokee/weather/WeatherLocation;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 213
    new-instance v0, Lmokee/weather/WeatherLocation;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lmokee/weather/WeatherLocation;-><init>(Landroid/os/Parcel;Lmokee/weather/WeatherLocation;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 217
    invoke-virtual {p0, p1}, Lmokee/weather/WeatherLocation$1;->newArray(I)[Lmokee/weather/WeatherLocation;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lmokee/weather/WeatherLocation;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 218
    new-array v0, p1, [Lmokee/weather/WeatherLocation;

    return-object v0
.end method
