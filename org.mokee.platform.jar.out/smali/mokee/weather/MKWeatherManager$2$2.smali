.class Lmokee/weather/MKWeatherManager$2$2;
.super Ljava/lang/Object;
.source "MKWeatherManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmokee/weather/MKWeatherManager$2;->onLookupCityRequestCompleted(Lmokee/weather/RequestInfo;ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmokee/weather/MKWeatherManager$2;

.field final synthetic val$listener:Lmokee/weather/MKWeatherManager$LookupCityRequestListener;

.field final synthetic val$status:I

.field final synthetic val$weatherLocations:Ljava/util/List;


# direct methods
.method constructor <init>(Lmokee/weather/MKWeatherManager$2;Lmokee/weather/MKWeatherManager$LookupCityRequestListener;ILjava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lmokee/weather/MKWeatherManager$2;
    .param p2, "val$listener"    # Lmokee/weather/MKWeatherManager$LookupCityRequestListener;
    .param p3, "val$status"    # I

    .prologue
    .line 357
    .local p4, "val$weatherLocations":Ljava/util/List;, "Ljava/util/List<Lmokee/weather/WeatherLocation;>;"
    iput-object p1, p0, Lmokee/weather/MKWeatherManager$2$2;->this$1:Lmokee/weather/MKWeatherManager$2;

    iput-object p2, p0, Lmokee/weather/MKWeatherManager$2$2;->val$listener:Lmokee/weather/MKWeatherManager$LookupCityRequestListener;

    iput p3, p0, Lmokee/weather/MKWeatherManager$2$2;->val$status:I

    iput-object p4, p0, Lmokee/weather/MKWeatherManager$2$2;->val$weatherLocations:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 360
    iget-object v0, p0, Lmokee/weather/MKWeatherManager$2$2;->val$listener:Lmokee/weather/MKWeatherManager$LookupCityRequestListener;

    iget v1, p0, Lmokee/weather/MKWeatherManager$2$2;->val$status:I

    iget-object v2, p0, Lmokee/weather/MKWeatherManager$2$2;->val$weatherLocations:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lmokee/weather/MKWeatherManager$LookupCityRequestListener;->onLookupCityRequestCompleted(ILjava/util/List;)V

    .line 359
    return-void
.end method
