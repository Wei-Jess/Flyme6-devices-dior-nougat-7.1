.class public Lcom/mokee/google/OfflineNumber;
.super Ljava/lang/Object;
.source "OfflineNumber.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

.field private static c:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

.field public static d:Z

.field private static final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "\u00e7b\u008c\u00a6W$\u0092\u00dbi\u009c\u00bcF5\u009f\u00eb\u007f"

    invoke-static {v0}, Lcom/mokee/google/OfflineNumber;->a(Ljava/lang/String;)[C

    move-result-object v0

    invoke-static {v0}, Lcom/mokee/google/OfflineNumber;->a([C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mokee/google/OfflineNumber;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized a()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    .locals 2

    const-class v1, Lcom/mokee/google/OfflineNumber;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mokee/google/OfflineNumber;->b:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lcom/mokee/google/OfflineNumber;->b:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    sput-object v0, Lcom/mokee/google/OfflineNumber;->b:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/mokee/google/OfflineNumber;->a()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method private static a([C)Ljava/lang/String;
    .locals 4

    array-length v1, p0

    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    if-le v2, v1, :cond_0

    aget-char v3, p0, v1

    rem-int/lit8 v0, v1, 0x7

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0xeb

    :goto_1
    xor-int/2addr v0, v3

    int-to-char v0, v0

    int-to-char v0, v0

    aput-char v0, p0, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x84

    goto :goto_1

    :pswitch_1
    const/16 v0, 0xd

    goto :goto_1

    :pswitch_2
    const/16 v0, 0xf9

    goto :goto_1

    :pswitch_3
    const/16 v0, 0xc8

    goto :goto_1

    :pswitch_4
    const/16 v0, 0x23

    goto :goto_1

    :pswitch_5
    const/16 v0, 0x56

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;)[C
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    aget-char v1, v0, v3

    xor-int/lit16 v1, v1, 0xeb

    int-to-char v1, v1

    int-to-char v1, v1

    aput-char v1, v0, v3

    goto :goto_0
.end method

.method static synthetic access$0(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/mokee/google/OfflineNumber;->a:Ljava/lang/String;

    return-void
.end method

.method private static declared-synchronized b()Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    .locals 2

    const-class v1, Lcom/mokee/google/OfflineNumber;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mokee/google/OfflineNumber;->c:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lcom/mokee/google/OfflineNumber;->c:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getInstance()Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    move-result-object v0

    sput-object v0, Lcom/mokee/google/OfflineNumber;->c:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/mokee/google/OfflineNumber;

    monitor-enter v3

    :try_start_0
    sget-boolean v4, Lcom/mokee/google/OfflineNumber;->d:Z

    sget-object v0, Lcom/mokee/google/OfflineNumber;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/CountryDetector;

    if-nez v0, :cond_0

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/mokee/google/OfflineNumber;->a:Ljava/lang/String;

    new-instance v2, Lcom/mokee/google/a;

    invoke-direct {v2}, Lcom/mokee/google/a;-><init>()V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/location/CountryDetector;->addCountryListener(Landroid/location/CountryListener;Landroid/os/Looper;)V

    sget-object v2, Lcom/mokee/google/OfflineNumber;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_2

    :goto_1
    monitor-exit v3

    return-object v2

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v3

    return-object v0

    :cond_2
    :try_start_2
    sget-boolean v0, Lcom/mokee/aegis/PacifierInfo;->c:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    sput-boolean v0, Lcom/mokee/aegis/PacifierInfo;->c:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public static getGeocodedLocationFor(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    sget-boolean v1, Lcom/mokee/google/OfflineNumber;->d:Z

    invoke-static {p0, p1}, Lcom/mokee/google/OfflineNumber;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v2

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/mokee/aegis/PacifierInfo;->c:Z

    if-nez v2, :cond_1

    :goto_0
    return-object v3

    :cond_0
    invoke-static {}, Lcom/mokee/google/OfflineNumber;->b()Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    move-result-object v0

    invoke-virtual {v0, v2, p2}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    sput-boolean v0, Lcom/mokee/google/OfflineNumber;->d:Z

    goto :goto_0
.end method
