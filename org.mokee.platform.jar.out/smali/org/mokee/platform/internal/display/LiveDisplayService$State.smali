.class Lorg/mokee/platform/internal/display/LiveDisplayService$State;
.super Ljava/lang/Object;
.source "LiveDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mokee/platform/internal/display/LiveDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "State"
.end annotation


# instance fields
.field public mLowPowerMode:Z

.field public mMode:I

.field public mScreenOn:Z

.field public mTwilight:Lorg/mokee/platform/internal/display/TwilightTracker$TwilightState;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-boolean v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$State;->mLowPowerMode:Z

    .line 123
    iput-boolean v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$State;->mScreenOn:Z

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$State;->mMode:I

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$State;->mTwilight:Lorg/mokee/platform/internal/display/TwilightTracker$TwilightState;

    .line 121
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 129
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 130
    const-string/jumbo v2, "[mLowPowerMode=%b, mScreenOn=%b, mMode=%d, mTwilight=%s"

    .line 129
    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/Object;

    .line 131
    iget-boolean v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$State;->mLowPowerMode:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v3, v4

    iget-boolean v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$State;->mScreenOn:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v3, v4

    iget v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$State;->mMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x2

    aput-object v0, v3, v4

    .line 132
    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$State;->mTwilight:Lorg/mokee/platform/internal/display/TwilightTracker$TwilightState;

    if-nez v0, :cond_0

    const-string/jumbo v0, "NULL"

    :goto_0
    const/4 v4, 0x3

    aput-object v0, v3, v4

    .line 129
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 132
    :cond_0
    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$State;->mTwilight:Lorg/mokee/platform/internal/display/TwilightTracker$TwilightState;

    invoke-virtual {v0}, Lorg/mokee/platform/internal/display/TwilightTracker$TwilightState;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
