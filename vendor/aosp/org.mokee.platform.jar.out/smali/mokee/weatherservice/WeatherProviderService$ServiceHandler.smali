.class Lmokee/weatherservice/WeatherProviderService$ServiceHandler;
.super Landroid/os/Handler;
.source "WeatherProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/weatherservice/WeatherProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceHandler"
.end annotation


# static fields
.field public static final MSG_CANCEL_REQUEST:I = 0x3

.field public static final MSG_ON_NEW_REQUEST:I = 0x2

.field public static final MSG_SET_CLIENT:I = 0x1


# instance fields
.field final synthetic this$0:Lmokee/weatherservice/WeatherProviderService;


# direct methods
.method public constructor <init>(Lmokee/weatherservice/WeatherProviderService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lmokee/weatherservice/WeatherProviderService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 140
    iput-object p1, p0, Lmokee/weatherservice/WeatherProviderService$ServiceHandler;->this$0:Lmokee/weatherservice/WeatherProviderService;

    .line 141
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 140
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 149
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 148
    return-void

    .line 151
    :pswitch_0
    iget-object v3, p0, Lmokee/weatherservice/WeatherProviderService$ServiceHandler;->this$0:Lmokee/weatherservice/WeatherProviderService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lmokee/weatherservice/IWeatherProviderServiceClient;

    invoke-static {v3, v2}, Lmokee/weatherservice/WeatherProviderService;->-set0(Lmokee/weatherservice/WeatherProviderService;Lmokee/weatherservice/IWeatherProviderServiceClient;)Lmokee/weatherservice/IWeatherProviderServiceClient;

    .line 152
    iget-object v2, p0, Lmokee/weatherservice/WeatherProviderService$ServiceHandler;->this$0:Lmokee/weatherservice/WeatherProviderService;

    invoke-static {v2}, Lmokee/weatherservice/WeatherProviderService;->-get0(Lmokee/weatherservice/WeatherProviderService;)Lmokee/weatherservice/IWeatherProviderServiceClient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 153
    iget-object v2, p0, Lmokee/weatherservice/WeatherProviderService$ServiceHandler;->this$0:Lmokee/weatherservice/WeatherProviderService;

    invoke-virtual {v2}, Lmokee/weatherservice/WeatherProviderService;->onConnected()V

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v2, p0, Lmokee/weatherservice/WeatherProviderService$ServiceHandler;->this$0:Lmokee/weatherservice/WeatherProviderService;

    invoke-virtual {v2}, Lmokee/weatherservice/WeatherProviderService;->onDisconnected()V

    goto :goto_0

    .line 160
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lmokee/weather/RequestInfo;

    .line 161
    .local v0, "info":Lmokee/weather/RequestInfo;
    if-eqz v0, :cond_1

    .line 162
    new-instance v1, Lmokee/weatherservice/ServiceRequest;

    iget-object v2, p0, Lmokee/weatherservice/WeatherProviderService$ServiceHandler;->this$0:Lmokee/weatherservice/WeatherProviderService;

    invoke-static {v2}, Lmokee/weatherservice/WeatherProviderService;->-get0(Lmokee/weatherservice/WeatherProviderService;)Lmokee/weatherservice/IWeatherProviderServiceClient;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lmokee/weatherservice/ServiceRequest;-><init>(Lmokee/weather/RequestInfo;Lmokee/weatherservice/IWeatherProviderServiceClient;)V

    .line 163
    .local v1, "request":Lmokee/weatherservice/ServiceRequest;
    iget-object v2, p0, Lmokee/weatherservice/WeatherProviderService$ServiceHandler;->this$0:Lmokee/weatherservice/WeatherProviderService;

    invoke-static {v2}, Lmokee/weatherservice/WeatherProviderService;->-get2(Lmokee/weatherservice/WeatherProviderService;)Ljava/util/Set;

    move-result-object v3

    monitor-enter v3

    .line 164
    :try_start_0
    iget-object v2, p0, Lmokee/weatherservice/WeatherProviderService$ServiceHandler;->this$0:Lmokee/weatherservice/WeatherProviderService;

    invoke-static {v2}, Lmokee/weatherservice/WeatherProviderService;->-get2(Lmokee/weatherservice/WeatherProviderService;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 166
    iget-object v2, p0, Lmokee/weatherservice/WeatherProviderService$ServiceHandler;->this$0:Lmokee/weatherservice/WeatherProviderService;

    invoke-virtual {v2, v1}, Lmokee/weatherservice/WeatherProviderService;->onRequestSubmitted(Lmokee/weatherservice/ServiceRequest;)V

    .line 168
    .end local v1    # "request":Lmokee/weatherservice/ServiceRequest;
    :cond_1
    return-void

    .line 163
    .restart local v1    # "request":Lmokee/weatherservice/ServiceRequest;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 171
    .end local v0    # "info":Lmokee/weather/RequestInfo;
    .end local v1    # "request":Lmokee/weatherservice/ServiceRequest;
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lmokee/weatherservice/ServiceRequest;

    .line 172
    .restart local v1    # "request":Lmokee/weatherservice/ServiceRequest;
    iget-object v2, p0, Lmokee/weatherservice/WeatherProviderService$ServiceHandler;->this$0:Lmokee/weatherservice/WeatherProviderService;

    invoke-virtual {v2, v1}, Lmokee/weatherservice/WeatherProviderService;->onRequestCancelled(Lmokee/weatherservice/ServiceRequest;)V

    .line 173
    return-void

    .line 149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
