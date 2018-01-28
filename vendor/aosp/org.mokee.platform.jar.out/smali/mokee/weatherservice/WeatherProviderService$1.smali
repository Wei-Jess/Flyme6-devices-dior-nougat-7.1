.class Lmokee/weatherservice/WeatherProviderService$1;
.super Lmokee/weatherservice/IWeatherProviderService$Stub;
.source "WeatherProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/weatherservice/WeatherProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmokee/weatherservice/WeatherProviderService;


# direct methods
.method constructor <init>(Lmokee/weatherservice/WeatherProviderService;)V
    .locals 0
    .param p1, "this$0"    # Lmokee/weatherservice/WeatherProviderService;

    .prologue
    .line 93
    iput-object p1, p0, Lmokee/weatherservice/WeatherProviderService$1;->this$0:Lmokee/weatherservice/WeatherProviderService;

    invoke-direct {p0}, Lmokee/weatherservice/IWeatherProviderService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelOngoingRequests()V
    .locals 5

    .prologue
    .line 112
    iget-object v2, p0, Lmokee/weatherservice/WeatherProviderService$1;->this$0:Lmokee/weatherservice/WeatherProviderService;

    invoke-static {v2}, Lmokee/weatherservice/WeatherProviderService;->-get2(Lmokee/weatherservice/WeatherProviderService;)Ljava/util/Set;

    move-result-object v3

    monitor-enter v3

    .line 113
    :try_start_0
    iget-object v2, p0, Lmokee/weatherservice/WeatherProviderService$1;->this$0:Lmokee/weatherservice/WeatherProviderService;

    invoke-static {v2}, Lmokee/weatherservice/WeatherProviderService;->-get2(Lmokee/weatherservice/WeatherProviderService;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "request$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmokee/weatherservice/ServiceRequest;

    .line 114
    .local v0, "request":Lmokee/weatherservice/ServiceRequest;
    invoke-virtual {v0}, Lmokee/weatherservice/ServiceRequest;->cancel()V

    .line 115
    iget-object v2, p0, Lmokee/weatherservice/WeatherProviderService$1;->this$0:Lmokee/weatherservice/WeatherProviderService;

    invoke-static {v2}, Lmokee/weatherservice/WeatherProviderService;->-get2(Lmokee/weatherservice/WeatherProviderService;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 116
    iget-object v2, p0, Lmokee/weatherservice/WeatherProviderService$1;->this$0:Lmokee/weatherservice/WeatherProviderService;

    invoke-static {v2}, Lmokee/weatherservice/WeatherProviderService;->-get1(Lmokee/weatherservice/WeatherProviderService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v4, 0x3

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 112
    .end local v0    # "request":Lmokee/weatherservice/ServiceRequest;
    .end local v1    # "request$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "request$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    .line 111
    return-void
.end method

.method public cancelRequest(I)V
    .locals 5
    .param p1, "requestId"    # I

    .prologue
    .line 124
    iget-object v2, p0, Lmokee/weatherservice/WeatherProviderService$1;->this$0:Lmokee/weatherservice/WeatherProviderService;

    invoke-static {v2}, Lmokee/weatherservice/WeatherProviderService;->-get2(Lmokee/weatherservice/WeatherProviderService;)Ljava/util/Set;

    move-result-object v3

    monitor-enter v3

    .line 125
    :try_start_0
    iget-object v2, p0, Lmokee/weatherservice/WeatherProviderService$1;->this$0:Lmokee/weatherservice/WeatherProviderService;

    invoke-static {v2}, Lmokee/weatherservice/WeatherProviderService;->-get2(Lmokee/weatherservice/WeatherProviderService;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "request$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmokee/weatherservice/ServiceRequest;

    .line 126
    .local v0, "request":Lmokee/weatherservice/ServiceRequest;
    invoke-virtual {v0}, Lmokee/weatherservice/ServiceRequest;->getRequestInfo()Lmokee/weather/RequestInfo;

    move-result-object v2

    invoke-virtual {v2}, Lmokee/weather/RequestInfo;->hashCode()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 127
    iget-object v2, p0, Lmokee/weatherservice/WeatherProviderService$1;->this$0:Lmokee/weatherservice/WeatherProviderService;

    invoke-static {v2}, Lmokee/weatherservice/WeatherProviderService;->-get2(Lmokee/weatherservice/WeatherProviderService;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 128
    invoke-virtual {v0}, Lmokee/weatherservice/ServiceRequest;->cancel()V

    .line 129
    iget-object v2, p0, Lmokee/weatherservice/WeatherProviderService$1;->this$0:Lmokee/weatherservice/WeatherProviderService;

    invoke-static {v2}, Lmokee/weatherservice/WeatherProviderService;->-get1(Lmokee/weatherservice/WeatherProviderService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v4, 0x3

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "request":Lmokee/weatherservice/ServiceRequest;
    :cond_1
    monitor-exit v3

    .line 123
    return-void

    .line 124
    .end local v1    # "request$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public processCityNameLookupRequest(Lmokee/weather/RequestInfo;)V
    .locals 2
    .param p1, "info"    # Lmokee/weather/RequestInfo;

    .prologue
    .line 102
    iget-object v0, p0, Lmokee/weatherservice/WeatherProviderService$1;->this$0:Lmokee/weatherservice/WeatherProviderService;

    invoke-static {v0}, Lmokee/weatherservice/WeatherProviderService;->-get1(Lmokee/weatherservice/WeatherProviderService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 101
    return-void
.end method

.method public processWeatherUpdateRequest(Lmokee/weather/RequestInfo;)V
    .locals 2
    .param p1, "info"    # Lmokee/weather/RequestInfo;

    .prologue
    .line 97
    iget-object v0, p0, Lmokee/weatherservice/WeatherProviderService$1;->this$0:Lmokee/weatherservice/WeatherProviderService;

    invoke-static {v0}, Lmokee/weatherservice/WeatherProviderService;->-get1(Lmokee/weatherservice/WeatherProviderService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 96
    return-void
.end method

.method public setServiceClient(Lmokee/weatherservice/IWeatherProviderServiceClient;)V
    .locals 2
    .param p1, "client"    # Lmokee/weatherservice/IWeatherProviderServiceClient;

    .prologue
    .line 107
    iget-object v0, p0, Lmokee/weatherservice/WeatherProviderService$1;->this$0:Lmokee/weatherservice/WeatherProviderService;

    invoke-static {v0}, Lmokee/weatherservice/WeatherProviderService;->-get1(Lmokee/weatherservice/WeatherProviderService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 106
    return-void
.end method
