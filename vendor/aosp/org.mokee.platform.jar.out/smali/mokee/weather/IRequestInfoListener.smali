.class public interface abstract Lmokee/weather/IRequestInfoListener;
.super Ljava/lang/Object;
.source "IRequestInfoListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmokee/weather/IRequestInfoListener$NoOp;,
        Lmokee/weather/IRequestInfoListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onLookupCityRequestCompleted(Lmokee/weather/RequestInfo;ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmokee/weather/RequestInfo;",
            "I",
            "Ljava/util/List",
            "<",
            "Lmokee/weather/WeatherLocation;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onWeatherRequestCompleted(Lmokee/weather/RequestInfo;ILmokee/weather/WeatherInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
