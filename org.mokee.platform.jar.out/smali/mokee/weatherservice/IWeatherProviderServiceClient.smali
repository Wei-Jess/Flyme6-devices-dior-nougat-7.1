.class public interface abstract Lmokee/weatherservice/IWeatherProviderServiceClient;
.super Ljava/lang/Object;
.source "IWeatherProviderServiceClient.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmokee/weatherservice/IWeatherProviderServiceClient$NoOp;,
        Lmokee/weatherservice/IWeatherProviderServiceClient$Stub;
    }
.end annotation


# virtual methods
.method public abstract setServiceRequestState(Lmokee/weather/RequestInfo;Lmokee/weatherservice/ServiceRequestResult;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
