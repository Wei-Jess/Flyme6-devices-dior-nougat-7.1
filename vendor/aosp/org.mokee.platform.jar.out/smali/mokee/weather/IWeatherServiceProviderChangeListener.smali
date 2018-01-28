.class public interface abstract Lmokee/weather/IWeatherServiceProviderChangeListener;
.super Ljava/lang/Object;
.source "IWeatherServiceProviderChangeListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmokee/weather/IWeatherServiceProviderChangeListener$NoOp;,
        Lmokee/weather/IWeatherServiceProviderChangeListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onWeatherServiceProviderChanged(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
