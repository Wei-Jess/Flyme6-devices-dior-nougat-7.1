.class Lmokee/weather/MKWeatherManager$2;
.super Lmokee/weather/IRequestInfoListener$Stub;
.source "MKWeatherManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/weather/MKWeatherManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmokee/weather/MKWeatherManager;


# direct methods
.method constructor <init>(Lmokee/weather/MKWeatherManager;)V
    .locals 0
    .param p1, "this$0"    # Lmokee/weather/MKWeatherManager;

    .prologue
    .line 333
    iput-object p1, p0, Lmokee/weather/MKWeatherManager$2;->this$0:Lmokee/weather/MKWeatherManager;

    invoke-direct {p0}, Lmokee/weather/IRequestInfoListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onLookupCityRequestCompleted(Lmokee/weather/RequestInfo;ILjava/util/List;)V
    .locals 3
    .param p1, "requestInfo"    # Lmokee/weather/RequestInfo;
    .param p2, "status"    # I
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

    .prologue
    .line 355
    .local p3, "weatherLocations":Ljava/util/List;, "Ljava/util/List<Lmokee/weather/WeatherLocation;>;"
    iget-object v1, p0, Lmokee/weather/MKWeatherManager$2;->this$0:Lmokee/weather/MKWeatherManager;

    invoke-static {v1}, Lmokee/weather/MKWeatherManager;->-get1(Lmokee/weather/MKWeatherManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmokee/weather/MKWeatherManager$LookupCityRequestListener;

    .line 356
    .local v0, "listener":Lmokee/weather/MKWeatherManager$LookupCityRequestListener;
    if-eqz v0, :cond_0

    .line 357
    iget-object v1, p0, Lmokee/weather/MKWeatherManager$2;->this$0:Lmokee/weather/MKWeatherManager;

    invoke-static {v1}, Lmokee/weather/MKWeatherManager;->-get0(Lmokee/weather/MKWeatherManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lmokee/weather/MKWeatherManager$2$2;

    invoke-direct {v2, p0, v0, p2, p3}, Lmokee/weather/MKWeatherManager$2$2;-><init>(Lmokee/weather/MKWeatherManager$2;Lmokee/weather/MKWeatherManager$LookupCityRequestListener;ILjava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 352
    :cond_0
    return-void
.end method

.method public onWeatherRequestCompleted(Lmokee/weather/RequestInfo;ILmokee/weather/WeatherInfo;)V
    .locals 3
    .param p1, "requestInfo"    # Lmokee/weather/RequestInfo;
    .param p2, "status"    # I
    .param p3, "weatherInfo"    # Lmokee/weather/WeatherInfo;

    .prologue
    .line 339
    iget-object v1, p0, Lmokee/weather/MKWeatherManager$2;->this$0:Lmokee/weather/MKWeatherManager;

    invoke-static {v1}, Lmokee/weather/MKWeatherManager;->-get3(Lmokee/weather/MKWeatherManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmokee/weather/MKWeatherManager$WeatherUpdateRequestListener;

    .line 340
    .local v0, "listener":Lmokee/weather/MKWeatherManager$WeatherUpdateRequestListener;
    if-eqz v0, :cond_0

    .line 341
    iget-object v1, p0, Lmokee/weather/MKWeatherManager$2;->this$0:Lmokee/weather/MKWeatherManager;

    invoke-static {v1}, Lmokee/weather/MKWeatherManager;->-get0(Lmokee/weather/MKWeatherManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lmokee/weather/MKWeatherManager$2$1;

    invoke-direct {v2, p0, v0, p2, p3}, Lmokee/weather/MKWeatherManager$2$1;-><init>(Lmokee/weather/MKWeatherManager$2;Lmokee/weather/MKWeatherManager$WeatherUpdateRequestListener;ILmokee/weather/WeatherInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 337
    :cond_0
    return-void
.end method
