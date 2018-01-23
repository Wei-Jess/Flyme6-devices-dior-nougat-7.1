.class public Lmokee/providers/ThemesContract$MixnMatchColumns;
.super Ljava/lang/Object;
.source "ThemesContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/providers/ThemesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MixnMatchColumns"
.end annotation


# static fields
.field public static final COL_COMPONENT_ID:Ljava/lang/String; = "component_id"

.field public static final COL_KEY:Ljava/lang/String; = "key"

.field public static final COL_PREV_VALUE:Ljava/lang/String; = "previous_value"

.field public static final COL_UPDATE_TIME:Ljava/lang/String; = "update_time"

.field public static final COL_VALUE:Ljava/lang/String; = "value"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final KEY_ALARM:Ljava/lang/String; = "mixnmatch_alarm"

.field public static final KEY_BOOT_ANIM:Ljava/lang/String; = "mixnmatch_boot_anim"

.field public static final KEY_FONT:Ljava/lang/String; = "mixnmatch_font"

.field public static final KEY_HOMESCREEN:Ljava/lang/String; = "mixnmatch_homescreen"

.field public static final KEY_ICONS:Ljava/lang/String; = "mixnmatch_icons"

.field public static final KEY_LIVE_LOCK_SCREEN:Ljava/lang/String; = "mixnmatch_live_lock_screen"

.field public static final KEY_LOCKSCREEN:Ljava/lang/String; = "mixnmatch_lockscreen"

.field public static final KEY_NAVIGATION_BAR:Ljava/lang/String; = "mixnmatch_navigation_bar"

.field public static final KEY_NOTIFICATIONS:Ljava/lang/String; = "mixnmatch_notifications"

.field public static final KEY_OVERLAYS:Ljava/lang/String; = "mixnmatch_overlays"

.field public static final KEY_RINGTONE:Ljava/lang/String; = "mixnmatch_ringtone"

.field public static final KEY_STATUS_BAR:Ljava/lang/String; = "mixnmatch_status_bar"

.field public static final ROWS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 300
    sget-object v0, Lmokee/providers/ThemesContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "mixnmatch"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmokee/providers/ThemesContract$MixnMatchColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 350
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "mixnmatch_homescreen"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 351
    const-string/jumbo v1, "mixnmatch_lockscreen"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 352
    const-string/jumbo v1, "mixnmatch_icons"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 353
    const-string/jumbo v1, "mixnmatch_status_bar"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 354
    const-string/jumbo v1, "mixnmatch_boot_anim"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 355
    const-string/jumbo v1, "mixnmatch_font"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 356
    const-string/jumbo v1, "mixnmatch_notifications"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 357
    const-string/jumbo v1, "mixnmatch_ringtone"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 358
    const-string/jumbo v1, "mixnmatch_alarm"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 359
    const-string/jumbo v1, "mixnmatch_overlays"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 360
    const-string/jumbo v1, "mixnmatch_navigation_bar"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 361
    const-string/jumbo v1, "mixnmatch_live_lock_screen"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 350
    sput-object v0, Lmokee/providers/ThemesContract$MixnMatchColumns;->ROWS:[Ljava/lang/String;

    .line 299
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static componentToImageColName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "component"    # Ljava/lang/String;

    .prologue
    .line 371
    const-string/jumbo v0, "mixnmatch_homescreen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    const-string/jumbo v0, "homescreen_uri"

    return-object v0

    .line 373
    :cond_0
    const-string/jumbo v0, "mixnmatch_lockscreen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    const-string/jumbo v0, "lockscreen_uri"

    return-object v0

    .line 375
    :cond_1
    const-string/jumbo v0, "mixnmatch_boot_anim"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 376
    const-string/jumbo v0, "bootanim_uri"

    return-object v0

    .line 377
    :cond_2
    const-string/jumbo v0, "mixnmatch_font"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 378
    const-string/jumbo v0, "font_uri"

    return-object v0

    .line 379
    :cond_3
    const-string/jumbo v0, "mixnmatch_icons"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 380
    const-string/jumbo v0, "icon_uri"

    return-object v0

    .line 381
    :cond_4
    const-string/jumbo v0, "mixnmatch_status_bar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 382
    const-string/jumbo v0, "status_uri"

    return-object v0

    .line 383
    :cond_5
    const-string/jumbo v0, "mixnmatch_notifications"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 384
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Notifications mixnmatch component does not have a related column"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 385
    :cond_6
    const-string/jumbo v0, "mixnmatch_ringtone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 386
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Ringtone mixnmatch component does not have a related column"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_7
    const-string/jumbo v0, "mixnmatch_overlays"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 388
    const-string/jumbo v0, "overlays_uri"

    return-object v0

    .line 389
    :cond_8
    const-string/jumbo v0, "mixnmatch_alarm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 390
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 391
    const-string/jumbo v1, "Alarm mixnmatch component does not have a related column"

    .line 390
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_9
    const-string/jumbo v0, "mixnmatch_navigation_bar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 393
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 394
    const-string/jumbo v1, "Navigation bar mixnmatch component does not have a related column"

    .line 393
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_a
    const-string/jumbo v0, "mixnmatch_live_lock_screen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 396
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 397
    const-string/jumbo v1, "Live lock screen mixnmatch component does not have a related column"

    .line 396
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static componentToMixNMatchKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "component"    # Ljava/lang/String;

    .prologue
    .line 407
    const-string/jumbo v0, "mods_homescreen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    const-string/jumbo v0, "mixnmatch_homescreen"

    return-object v0

    .line 409
    :cond_0
    const-string/jumbo v0, "mods_icons"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    const-string/jumbo v0, "mixnmatch_icons"

    return-object v0

    .line 411
    :cond_1
    const-string/jumbo v0, "mods_lockscreen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 412
    const-string/jumbo v0, "mixnmatch_lockscreen"

    return-object v0

    .line 413
    :cond_2
    const-string/jumbo v0, "mods_fonts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 414
    const-string/jumbo v0, "mixnmatch_font"

    return-object v0

    .line 415
    :cond_3
    const-string/jumbo v0, "mods_bootanim"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 416
    const-string/jumbo v0, "mixnmatch_boot_anim"

    return-object v0

    .line 417
    :cond_4
    const-string/jumbo v0, "mods_alarms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 418
    const-string/jumbo v0, "mixnmatch_alarm"

    return-object v0

    .line 419
    :cond_5
    const-string/jumbo v0, "mods_notifications"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 420
    const-string/jumbo v0, "mixnmatch_notifications"

    return-object v0

    .line 421
    :cond_6
    const-string/jumbo v0, "mods_ringtones"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 422
    const-string/jumbo v0, "mixnmatch_ringtone"

    return-object v0

    .line 423
    :cond_7
    const-string/jumbo v0, "mods_overlays"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 424
    const-string/jumbo v0, "mixnmatch_overlays"

    return-object v0

    .line 425
    :cond_8
    const-string/jumbo v0, "mods_status_bar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 426
    const-string/jumbo v0, "mixnmatch_status_bar"

    return-object v0

    .line 427
    :cond_9
    const-string/jumbo v0, "mods_navigation_bar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 428
    const-string/jumbo v0, "mixnmatch_navigation_bar"

    return-object v0

    .line 429
    :cond_a
    const-string/jumbo v0, "mods_live_lock_screen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 430
    const-string/jumbo v0, "mixnmatch_live_lock_screen"

    return-object v0

    .line 432
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static mixNMatchKeyToComponent(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "mixnmatchKey"    # Ljava/lang/String;

    .prologue
    .line 440
    const-string/jumbo v0, "mixnmatch_homescreen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    const-string/jumbo v0, "mods_homescreen"

    return-object v0

    .line 442
    :cond_0
    const-string/jumbo v0, "mixnmatch_icons"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 443
    const-string/jumbo v0, "mods_icons"

    return-object v0

    .line 444
    :cond_1
    const-string/jumbo v0, "mixnmatch_lockscreen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 445
    const-string/jumbo v0, "mods_lockscreen"

    return-object v0

    .line 446
    :cond_2
    const-string/jumbo v0, "mixnmatch_font"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 447
    const-string/jumbo v0, "mods_fonts"

    return-object v0

    .line 448
    :cond_3
    const-string/jumbo v0, "mixnmatch_boot_anim"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 449
    const-string/jumbo v0, "mods_bootanim"

    return-object v0

    .line 450
    :cond_4
    const-string/jumbo v0, "mixnmatch_alarm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 451
    const-string/jumbo v0, "mods_alarms"

    return-object v0

    .line 452
    :cond_5
    const-string/jumbo v0, "mixnmatch_notifications"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 453
    const-string/jumbo v0, "mods_notifications"

    return-object v0

    .line 454
    :cond_6
    const-string/jumbo v0, "mixnmatch_ringtone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 455
    const-string/jumbo v0, "mods_ringtones"

    return-object v0

    .line 456
    :cond_7
    const-string/jumbo v0, "mixnmatch_overlays"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 457
    const-string/jumbo v0, "mods_overlays"

    return-object v0

    .line 458
    :cond_8
    const-string/jumbo v0, "mixnmatch_status_bar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 459
    const-string/jumbo v0, "mods_status_bar"

    return-object v0

    .line 460
    :cond_9
    const-string/jumbo v0, "mixnmatch_navigation_bar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 461
    const-string/jumbo v0, "mods_navigation_bar"

    return-object v0

    .line 462
    :cond_a
    const-string/jumbo v0, "mixnmatch_live_lock_screen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 463
    const-string/jumbo v0, "mods_live_lock_screen"

    return-object v0

    .line 465
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method
