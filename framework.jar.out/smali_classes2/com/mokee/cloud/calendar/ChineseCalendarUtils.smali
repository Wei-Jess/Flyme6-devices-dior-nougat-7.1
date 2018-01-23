.class public Lcom/mokee/cloud/calendar/ChineseCalendarUtils;
.super Ljava/lang/Object;
.source "ChineseCalendarUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/Calendar;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, v2, :cond_1

    :cond_0
    return v2

    :cond_1
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0
.end method

.method private static a(Ljava/util/Calendar;Landroid/content/SharedPreferences;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lcom/mokee/cloud/calendar/ChineseCalendarUtils;->isChineseHolidayOrWorkday(Landroid/content/SharedPreferences;III)Z

    move-result v0

    return v0
.end method

.method private static b(Ljava/util/Calendar;Landroid/content/SharedPreferences;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lcom/mokee/cloud/calendar/ChineseCalendarUtils;->isChineseHolidayOrWorkday(Landroid/content/SharedPreferences;III)Z

    move-result v0

    return v0
.end method

.method public static calculateDaysToNextAlarmWithoutHoliday(Ljava/util/Calendar;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)Ljava/util/Calendar;
    .locals 2

    sget-boolean v0, Lcom/mokee/cloud/calendar/SolarFestival;->b:Z

    if-nez v0, :cond_0

    :goto_0
    invoke-static {p0, p2}, Lcom/mokee/cloud/calendar/ChineseCalendarUtils;->b(Ljava/util/Calendar;Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_1
    const/4 v0, 0x6

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/mokee/cloud/calendar/ChineseCalendarUtils;->a(Ljava/util/Calendar;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    return-object p0

    :cond_3
    invoke-static {p0, p1}, Lcom/mokee/cloud/calendar/ChineseCalendarUtils;->a(Ljava/util/Calendar;Landroid/content/SharedPreferences;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1
.end method

.method public static isChineseHolidayOrWorkday(Landroid/content/SharedPreferences;III)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
