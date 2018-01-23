.class public Landroid/mokee/calendar/FestivalInfo;
.super Ljava/lang/Object;
.source "FestivalInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFestivalInfo()[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "0101 \u5143\u65e6"

    aput-object v1, v0, v2

    const-string/jumbo v1, "0214 \u60c5\u4eba\u8282"

    aput-object v1, v0, v3

    const-string/jumbo v1, "0308 \u5987\u5973\u8282"

    aput-object v1, v0, v4

    const-string/jumbo v1, "0312 \u690d\u6811\u8282"

    aput-object v1, v0, v5

    .line 32
    const-string/jumbo v1, "0315 \u6d88\u8d39\u65e5"

    aput-object v1, v0, v6

    const-string/jumbo v1, "0401 \u611a\u4eba\u8282"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "0413 \u6cfc\u6c34\u8282"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "0501 \u52b3\u52a8\u8282"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "0504 \u9752\u5e74\u8282"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "0601 \u513f\u7ae5\u8282"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 33
    const-string/jumbo v1, "0701 \u5efa\u515a\u65e5"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "0801 \u5efa\u519b\u8282"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "0903 \u6297\u6218\u80dc\u5229"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "0910 \u6559\u5e08\u8282"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "1001 \u56fd\u5e86\u8282"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "1031 \u4e07\u5723\u8282"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 34
    const-string/jumbo v1, "1111 \u5149\u68cd\u8282"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "1224 \u5e73\u5b89\u591c"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "1225 \u5723\u8bde\u8282"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 31
    return-object v0

    .line 29
    :cond_0
    const-string/jumbo v1, "HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "0101 \u5143\u65e6"

    aput-object v1, v0, v2

    const-string/jumbo v1, "0214 \u60c5\u4eba\u7bc0"

    aput-object v1, v0, v3

    const-string/jumbo v1, "0308 \u5a66\u5973\u7bc0"

    aput-object v1, v0, v4

    const-string/jumbo v1, "0401 \u611a\u4eba\u7bc0"

    aput-object v1, v0, v5

    .line 37
    const-string/jumbo v1, "0501 \u52de\u52d5\u7bc0"

    aput-object v1, v0, v6

    const-string/jumbo v1, "0701 \u7279\u5340\u7d00\u5ff5"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "0910 \u6559\u5e2b\u7bc0"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "1001 \u570b\u6176\u7bc0"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "1031 \u842c\u8056\u7bc0"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "1224 \u5e73\u5b89\u591c"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 38
    const-string/jumbo v1, "1225 \u8056\u8a95\u7bc0"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 36
    return-object v0

    .line 29
    :cond_1
    const-string/jumbo v1, "TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 41
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "0101 \u5143\u65e6"

    aput-object v1, v0, v2

    const-string/jumbo v1, "0214 \u60c5\u4eba\u7bc0"

    aput-object v1, v0, v3

    const-string/jumbo v1, "0228 \u548c\u5e73\u7d00\u5ff5"

    aput-object v1, v0, v4

    const-string/jumbo v1, "0308 \u5a66\u5973\u7bc0"

    aput-object v1, v0, v5

    .line 42
    const-string/jumbo v1, "0312 \u570b\u7236\u901d\u4e16"

    aput-object v1, v0, v6

    const-string/jumbo v1, "0314 \u53cd\u4fb5\u7565\u65e5"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "0329 \u5148\u70c8\u7d00\u5ff5"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "0401 \u611a\u4eba\u7bc0"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "0404 \u5152\u7ae5\u7bc0"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "0501 \u52de\u52d5\u7bc0"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 43
    const-string/jumbo v1, "0715 \u89e3\u653e\u7d00\u5ff5"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "0808 \u7236\u89aa\u7bc0"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "0903 \u8ecd\u4eba\u7bc0"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "0928 \u5b54\u5b50\u8a95\u8fb0"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "1010 \u570b\u6176\u7bc0"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "1024 \u806f\u5408\u570b\u65e5"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "1025 \u81fa\u7063\u5149\u5fa9"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 44
    const-string/jumbo v1, "1112 \u570b\u7236\u8a95\u8fb0"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "1031 \u842c\u8056\u7bc0"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "1224 \u5e73\u5b89\u591c"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "1225 \u8056\u8a95\u7bc0"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 41
    return-object v0

    .line 46
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSpecificInfo()[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "5 2 0 \u6bcd\u4eb2\u8282"

    aput-object v1, v0, v2

    const-string/jumbo v1, "6 3 0 \u7236\u4eb2\u8282"

    aput-object v1, v0, v3

    const-string/jumbo v1, "11 4 4 \u611f\u6069\u8282"

    aput-object v1, v0, v4

    return-object v0

    .line 54
    :cond_0
    const-string/jumbo v1, "HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "5 2 0 \u6bcd\u89aa\u7bc0"

    aput-object v1, v0, v2

    const-string/jumbo v1, "6 3 0 \u7236\u89aa\u7bc0"

    aput-object v1, v0, v3

    const-string/jumbo v1, "11 4 4 \u611f\u6069\u7bc0"

    aput-object v1, v0, v4

    return-object v0

    .line 54
    :cond_1
    const-string/jumbo v1, "TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "5 2 0 \u6bcd\u89aa\u7bc0"

    aput-object v1, v0, v2

    const-string/jumbo v1, "11 4 4 \u611f\u6069\u7bc0"

    aput-object v1, v0, v3

    return-object v0

    .line 62
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
