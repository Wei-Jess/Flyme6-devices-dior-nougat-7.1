.class Lmokee/weather/MKWeatherManager$2$1;
.super Ljava/lang/Object;
.source "MKWeatherManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmokee/weather/MKWeatherManager$2;->onWeatherRequestCompleted(Lmokee/weather/RequestInfo;ILmokee/weather/WeatherInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmokee/weather/MKWeatherManager$2;

.field final synthetic val$listener:Lmokee/weather/MKWeatherManager$WeatherUpdateRequestListener;

.field final synthetic val$status:I

.field final synthetic val$weatherInfo:Lmokee/weather/WeatherInfo;


# direct methods
.method constructor <init>(Lmokee/weather/MKWeatherManager$2;Lmokee/weather/MKWeatherManager$WeatherUpdateRequestListener;ILmokee/weather/WeatherInfo;)V
    .locals 0
    .param p1, "this$1"    # Lmokee/weather/MKWeatherManager$2;
    .param p2, "val$listener"    # Lmokee/weather/MKWeatherManager$WeatherUpdateRequestListener;
    .param p3, "val$status"    # I
    .param p4, "val$weatherInfo"    # Lmokee/weather/WeatherInfo;

    .prologue
    .line 341
    iput-object p1, p0, Lmokee/weather/MKWeatherManager$2$1;->this$1:Lmokee/weather/MKWeatherManager$2;

    iput-object p2, p0, Lmokee/weather/MKWeatherManager$2$1;->val$listener:Lmokee/weather/MKWeatherManager$WeatherUpdateRequestListener;

    iput p3, p0, Lmokee/weather/MKWeatherManager$2$1;->val$status:I

    iput-object p4, p0, Lmokee/weather/MKWeatherManager$2$1;->val$weatherInfo:Lmokee/weather/WeatherInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 344
    iget-object v0, p0, Lmokee/weather/MKWeatherManager$2$1;->val$listener:Lmokee/weather/MKWeatherManager$WeatherUpdateRequestListener;

    iget v1, p0, Lmokee/weather/MKWeatherManager$2$1;->val$status:I

    iget-object v2, p0, Lmokee/weather/MKWeatherManager$2$1;->val$weatherInfo:Lmokee/weather/WeatherInfo;

    invoke-interface {v0, v1, v2}, Lmokee/weather/MKWeatherManager$WeatherUpdateRequestListener;->onWeatherRequestCompleted(ILmokee/weather/WeatherInfo;)V

    .line 343
    return-void
.end method
