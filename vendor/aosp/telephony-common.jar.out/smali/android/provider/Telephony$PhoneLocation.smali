.class public final Landroid/provider/Telephony$PhoneLocation;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhoneLocation"
.end annotation


# static fields
.field public static final CONTENT_FILTER_BYLOCATION_URI:Landroid/net/Uri;

.field public static final CONTENT_FILTER_BYNUMBER_URI:Landroid/net/Uri;

.field public static final CONTENT_FILTER_BYTYPE_URI:Landroid/net/Uri;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "number ASC"

.field public static final ENGINE_TYPE:Ljava/lang/String; = "engine_type"

.field public static final LOCATION:Ljava/lang/String; = "location"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final PHONE_TYPE:Ljava/lang/String; = "phone_type"

.field public static final UPDATE_TIME:Ljava/lang/String; = "update_time"

.field public static final USER_MARK:Ljava/lang/String; = "user_mark"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3033
    const-string/jumbo v0, "content://phonelocation"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3032
    sput-object v0, Landroid/provider/Telephony$PhoneLocation;->CONTENT_URI:Landroid/net/Uri;

    .line 3036
    const-string/jumbo v0, "content://phonelocation/bynumber"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3035
    sput-object v0, Landroid/provider/Telephony$PhoneLocation;->CONTENT_FILTER_BYNUMBER_URI:Landroid/net/Uri;

    .line 3039
    const-string/jumbo v0, "content://phonelocation/byphonetype"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3038
    sput-object v0, Landroid/provider/Telephony$PhoneLocation;->CONTENT_FILTER_BYTYPE_URI:Landroid/net/Uri;

    .line 3042
    const-string/jumbo v0, "content://phonelocation/bylocation"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3041
    sput-object v0, Landroid/provider/Telephony$PhoneLocation;->CONTENT_FILTER_BYLOCATION_URI:Landroid/net/Uri;

    .line 3030
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3030
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
