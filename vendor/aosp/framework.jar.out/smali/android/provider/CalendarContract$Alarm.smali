.class public final Landroid/provider/CalendarContract$Alarm;
.super Ljava/lang/Object;
.source "CalendarContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CalendarContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Alarm"
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.android.calendar.alarm"

.field public static final CONTENT_FILTER_HOLIDAY_URI:Landroid/net/Uri;

.field public static final CONTENT_FILTER_WORKDAY_URI:Landroid/net/Uri;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final STATE:Ljava/lang/String; = "state"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1724
    const-string/jumbo v0, "content://com.android.calendar.alarm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1723
    sput-object v0, Landroid/provider/CalendarContract$Alarm;->CONTENT_URI:Landroid/net/Uri;

    .line 1727
    const-string/jumbo v0, "content://com.android.calendar.alarm/workday"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1726
    sput-object v0, Landroid/provider/CalendarContract$Alarm;->CONTENT_FILTER_WORKDAY_URI:Landroid/net/Uri;

    .line 1730
    const-string/jumbo v0, "content://com.android.calendar.alarm/holiday"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1729
    sput-object v0, Landroid/provider/CalendarContract$Alarm;->CONTENT_FILTER_HOLIDAY_URI:Landroid/net/Uri;

    .line 1719
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
