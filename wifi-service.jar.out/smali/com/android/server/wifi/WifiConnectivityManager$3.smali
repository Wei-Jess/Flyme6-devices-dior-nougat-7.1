.class Lcom/android/server/wifi/WifiConnectivityManager$3;
.super Ljava/lang/Object;
.source "WifiConnectivityManager.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiConnectivityManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiConnectivityManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiConnectivityManager;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityManager$3;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$3;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityManager;->-wrap2(Lcom/android/server/wifi/WifiConnectivityManager;)V

    .line 213
    return-void
.end method
