.class Lcom/mokee/google/a;
.super Ljava/lang/Object;
.source "a.java"

# interfaces
.implements Landroid/location/CountryListener;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCountryDetected(Landroid/location/Country;)V
    .locals 1

    invoke-virtual {p1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mokee/google/OfflineNumber;->access$0(Ljava/lang/String;)V

    return-void
.end method
