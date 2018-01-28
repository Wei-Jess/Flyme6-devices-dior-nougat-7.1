.class Lmokee/weather/MKWeatherManager$1;
.super Lmokee/weather/IWeatherServiceProviderChangeListener$Stub;
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
    .line 305
    iput-object p1, p0, Lmokee/weather/MKWeatherManager$1;->this$0:Lmokee/weather/MKWeatherManager;

    invoke-direct {p0}, Lmokee/weather/IWeatherServiceProviderChangeListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onWeatherServiceProviderChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    .line 308
    iget-object v0, p0, Lmokee/weather/MKWeatherManager$1;->this$0:Lmokee/weather/MKWeatherManager;

    invoke-static {v0}, Lmokee/weather/MKWeatherManager;->-get0(Lmokee/weather/MKWeatherManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lmokee/weather/MKWeatherManager$1$1;

    invoke-direct {v1, p0, p1}, Lmokee/weather/MKWeatherManager$1$1;-><init>(Lmokee/weather/MKWeatherManager$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 307
    return-void
.end method
