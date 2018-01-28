.class public Lmokee/providers/WeatherContract;
.super Ljava/lang/Object;
.source "WeatherContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmokee/providers/WeatherContract$WeatherColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.mokee.weather"

.field public static final AUTHORITY_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string/jumbo v0, "content://com.mokee.weather"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmokee/providers/WeatherContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
