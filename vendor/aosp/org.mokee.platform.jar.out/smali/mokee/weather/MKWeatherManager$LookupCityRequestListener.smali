.class public interface abstract Lmokee/weather/MKWeatherManager$LookupCityRequestListener;
.super Ljava/lang/Object;
.source "MKWeatherManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/weather/MKWeatherManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LookupCityRequestListener"
.end annotation


# virtual methods
.method public abstract onLookupCityRequestCompleted(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lmokee/weather/WeatherLocation;",
            ">;)V"
        }
    .end annotation
.end method
