.class public final Lmokee/weatherservice/ServiceRequest;
.super Ljava/lang/Object;
.source "ServiceRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmokee/weatherservice/ServiceRequest$Status;
    }
.end annotation


# instance fields
.field private final mClient:Lmokee/weatherservice/IWeatherProviderServiceClient;

.field private final mInfo:Lmokee/weather/RequestInfo;

.field private mStatus:Lmokee/weatherservice/ServiceRequest$Status;


# direct methods
.method constructor <init>(Lmokee/weather/RequestInfo;Lmokee/weatherservice/IWeatherProviderServiceClient;)V
    .locals 1
    .param p1, "info"    # Lmokee/weather/RequestInfo;
    .param p2, "client"    # Lmokee/weatherservice/IWeatherProviderServiceClient;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lmokee/weatherservice/ServiceRequest;->mInfo:Lmokee/weather/RequestInfo;

    .line 40
    iput-object p2, p0, Lmokee/weatherservice/ServiceRequest;->mClient:Lmokee/weatherservice/IWeatherProviderServiceClient;

    .line 41
    sget-object v0, Lmokee/weatherservice/ServiceRequest$Status;->IN_PROGRESS:Lmokee/weatherservice/ServiceRequest$Status;

    iput-object v0, p0, Lmokee/weatherservice/ServiceRequest;->mStatus:Lmokee/weatherservice/ServiceRequest$Status;

    .line 38
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 154
    monitor-enter p0

    .line 155
    :try_start_0
    sget-object v0, Lmokee/weatherservice/ServiceRequest$Status;->CANCELLED:Lmokee/weatherservice/ServiceRequest$Status;

    iput-object v0, p0, Lmokee/weatherservice/ServiceRequest;->mStatus:Lmokee/weatherservice/ServiceRequest$Status;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 153
    return-void

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public complete(Lmokee/weatherservice/ServiceRequestResult;)V
    .locals 6
    .param p1, "result"    # Lmokee/weatherservice/ServiceRequestResult;

    .prologue
    .line 56
    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v2, p0, Lmokee/weatherservice/ServiceRequest;->mStatus:Lmokee/weatherservice/ServiceRequest$Status;

    sget-object v3, Lmokee/weatherservice/ServiceRequest$Status;->IN_PROGRESS:Lmokee/weatherservice/ServiceRequest$Status;

    invoke-virtual {v2, v3}, Lmokee/weatherservice/ServiceRequest$Status;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    :try_start_1
    iget-object v2, p0, Lmokee/weatherservice/ServiceRequest;->mInfo:Lmokee/weather/RequestInfo;

    invoke-virtual {v2}, Lmokee/weather/RequestInfo;->getRequestType()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 60
    .local v1, "requestType":I
    packed-switch v1, :pswitch_data_0

    .line 85
    .end local v1    # "requestType":I
    :goto_0
    :try_start_2
    sget-object v2, Lmokee/weatherservice/ServiceRequest$Status;->COMPLETED:Lmokee/weatherservice/ServiceRequest$Status;

    iput-object v2, p0, Lmokee/weatherservice/ServiceRequest;->mStatus:Lmokee/weatherservice/ServiceRequest$Status;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit p0

    .line 55
    return-void

    .line 63
    .restart local v1    # "requestType":I
    :pswitch_0
    :try_start_3
    invoke-virtual {p1}, Lmokee/weatherservice/ServiceRequestResult;->getWeatherInfo()Lmokee/weather/WeatherInfo;

    move-result-object v2

    if-nez v2, :cond_1

    .line 64
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "The service request result doesn\'t contain a valid WeatherInfo object"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    .end local v1    # "requestType":I
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 67
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "requestType":I
    :cond_1
    iget-object v2, p0, Lmokee/weatherservice/ServiceRequest;->mClient:Lmokee/weatherservice/IWeatherProviderServiceClient;

    iget-object v3, p0, Lmokee/weatherservice/ServiceRequest;->mInfo:Lmokee/weather/RequestInfo;

    .line 68
    const/4 v4, 0x1

    .line 67
    invoke-interface {v2, v3, p1, v4}, Lmokee/weatherservice/IWeatherProviderServiceClient;->setServiceRequestState(Lmokee/weather/RequestInfo;Lmokee/weatherservice/ServiceRequestResult;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 56
    .end local v1    # "requestType":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 71
    .restart local v1    # "requestType":I
    :pswitch_1
    :try_start_4
    invoke-virtual {p1}, Lmokee/weatherservice/ServiceRequestResult;->getLocationLookupList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 72
    invoke-virtual {p1}, Lmokee/weatherservice/ServiceRequestResult;->getLocationLookupList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_3

    .line 75
    :cond_2
    iget-object v2, p0, Lmokee/weatherservice/ServiceRequest;->mClient:Lmokee/weatherservice/IWeatherProviderServiceClient;

    iget-object v3, p0, Lmokee/weatherservice/ServiceRequest;->mInfo:Lmokee/weather/RequestInfo;

    const/4 v4, 0x0

    .line 76
    const/4 v5, -0x4

    .line 75
    invoke-interface {v2, v3, v4, v5}, Lmokee/weatherservice/IWeatherProviderServiceClient;->setServiceRequestState(Lmokee/weather/RequestInfo;Lmokee/weatherservice/ServiceRequestResult;I)V

    goto :goto_0

    .line 78
    :cond_3
    iget-object v2, p0, Lmokee/weatherservice/ServiceRequest;->mClient:Lmokee/weatherservice/IWeatherProviderServiceClient;

    iget-object v3, p0, Lmokee/weatherservice/ServiceRequest;->mInfo:Lmokee/weather/RequestInfo;

    .line 79
    const/4 v4, 0x1

    .line 78
    invoke-interface {v2, v3, p1, v4}, Lmokee/weatherservice/IWeatherProviderServiceClient;->setServiceRequestState(Lmokee/weather/RequestInfo;Lmokee/weatherservice/ServiceRequestResult;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public fail()V
    .locals 6

    .prologue
    .line 95
    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v2, p0, Lmokee/weatherservice/ServiceRequest;->mStatus:Lmokee/weatherservice/ServiceRequest$Status;

    sget-object v3, Lmokee/weatherservice/ServiceRequest$Status;->IN_PROGRESS:Lmokee/weatherservice/ServiceRequest$Status;

    invoke-virtual {v2, v3}, Lmokee/weatherservice/ServiceRequest$Status;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    :try_start_1
    iget-object v2, p0, Lmokee/weatherservice/ServiceRequest;->mInfo:Lmokee/weather/RequestInfo;

    invoke-virtual {v2}, Lmokee/weather/RequestInfo;->getRequestType()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 99
    .local v1, "requestType":I
    packed-switch v1, :pswitch_data_0

    .line 112
    .end local v1    # "requestType":I
    :goto_0
    :try_start_2
    sget-object v2, Lmokee/weatherservice/ServiceRequest$Status;->FAILED:Lmokee/weatherservice/ServiceRequest$Status;

    iput-object v2, p0, Lmokee/weatherservice/ServiceRequest;->mStatus:Lmokee/weatherservice/ServiceRequest$Status;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit p0

    .line 94
    return-void

    .line 102
    .restart local v1    # "requestType":I
    :pswitch_0
    :try_start_3
    iget-object v2, p0, Lmokee/weatherservice/ServiceRequest;->mClient:Lmokee/weatherservice/IWeatherProviderServiceClient;

    iget-object v3, p0, Lmokee/weatherservice/ServiceRequest;->mInfo:Lmokee/weather/RequestInfo;

    const/4 v4, 0x0

    .line 103
    const/4 v5, -0x1

    .line 102
    invoke-interface {v2, v3, v4, v5}, Lmokee/weatherservice/IWeatherProviderServiceClient;->setServiceRequestState(Lmokee/weather/RequestInfo;Lmokee/weatherservice/ServiceRequestResult;I)V

    goto :goto_0

    .line 110
    .end local v1    # "requestType":I
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 106
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "requestType":I
    :pswitch_1
    iget-object v2, p0, Lmokee/weatherservice/ServiceRequest;->mClient:Lmokee/weatherservice/IWeatherProviderServiceClient;

    iget-object v3, p0, Lmokee/weatherservice/ServiceRequest;->mInfo:Lmokee/weather/RequestInfo;

    const/4 v4, 0x0

    .line 107
    const/4 v5, -0x1

    .line 106
    invoke-interface {v2, v3, v4, v5}, Lmokee/weatherservice/IWeatherProviderServiceClient;->setServiceRequestState(Lmokee/weather/RequestInfo;Lmokee/weatherservice/ServiceRequestResult;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 95
    .end local v1    # "requestType":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getRequestInfo()Lmokee/weather/RequestInfo;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lmokee/weatherservice/ServiceRequest;->mInfo:Lmokee/weather/RequestInfo;

    return-object v0
.end method

.method public reject(I)V
    .locals 4
    .param p1, "status"    # I

    .prologue
    .line 128
    monitor-enter p0

    .line 129
    :try_start_0
    iget-object v1, p0, Lmokee/weatherservice/ServiceRequest;->mStatus:Lmokee/weatherservice/ServiceRequest$Status;

    sget-object v2, Lmokee/weatherservice/ServiceRequest$Status;->IN_PROGRESS:Lmokee/weatherservice/ServiceRequest$Status;

    invoke-virtual {v1, v2}, Lmokee/weatherservice/ServiceRequest$Status;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    packed-switch p1, :pswitch_data_0

    .line 140
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t reject with status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 134
    :pswitch_0
    :try_start_1
    iget-object v1, p0, Lmokee/weatherservice/ServiceRequest;->mClient:Lmokee/weatherservice/IWeatherProviderServiceClient;

    iget-object v2, p0, Lmokee/weatherservice/ServiceRequest;->mInfo:Lmokee/weather/RequestInfo;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, p1}, Lmokee/weatherservice/IWeatherProviderServiceClient;->setServiceRequestState(Lmokee/weather/RequestInfo;Lmokee/weatherservice/ServiceRequestResult;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    :goto_0
    :try_start_2
    sget-object v1, Lmokee/weatherservice/ServiceRequest$Status;->REJECTED:Lmokee/weatherservice/ServiceRequest$Status;

    iput-object v1, p0, Lmokee/weatherservice/ServiceRequest;->mStatus:Lmokee/weatherservice/ServiceRequest$Status;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit p0

    .line 127
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
