.class public Lcom/android/internal/util/slim/QuietHoursHelper;
.super Ljava/lang/Object;
.source "QuietHoursHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;
    }
.end annotation


# static fields
.field public static final QUIET_HOURS_INIT_COMMAND:Ljava/lang/String; = "com.android.settings.slim.service.QUIET_HOURS_INIT_COMMAND"

.field public static final QUIET_HOURS_PAUSE_COMMAND:Ljava/lang/String; = "com.android.settings.slim.service.QUIET_HOURS_PAUSE_COMMAND"

.field public static final QUIET_HOURS_RESUME_COMMAND:Ljava/lang/String; = "com.android.settings.slim.service.QUIET_HOURS_RESUME_COMMAND"

.field public static final QUIET_HOURS_SCHEDULE_COMMAND:Ljava/lang/String; = "com.android.settings.slim.service.QUIET_HOURS_SCHEDULE_COMMAND"

.field public static final QUIET_HOURS_START:Ljava/lang/String; = "com.android.settings.slim.service.QUIET_HOURS_START"

.field public static final QUIET_HOURS_STOP:Ljava/lang/String; = "com.android.settings.slim.service.QUIET_HOURS_STOP"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static hasBypass(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 214
    invoke-static {p0}, Lcom/android/internal/util/slim/QuietHoursHelper;->loadContacts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 215
    .local v1, "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 216
    .local v2, "nextContact":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 217
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;

    .line 218
    .local v0, "contact":Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;
    iget-boolean v3, v0, Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;->mBypassCall:Z

    if-nez v3, :cond_1

    iget-boolean v3, v0, Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;->mBypassMessage:Z

    if-eqz v3, :cond_0

    .line 219
    :cond_1
    const/4 v3, 0x1

    .line 222
    .end local v0    # "contact":Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static hasCallBypass(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 178
    invoke-static {p0}, Lcom/android/internal/util/slim/QuietHoursHelper;->loadContacts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 179
    .local v1, "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 180
    .local v2, "nextContact":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 181
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;

    .line 182
    .local v0, "contact":Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;
    iget-boolean v3, v0, Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;->mBypassCall:Z

    if-eqz v3, :cond_0

    .line 183
    const/4 v3, 0x1

    .line 186
    .end local v0    # "contact":Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static hasMessageBypass(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 202
    invoke-static {p0}, Lcom/android/internal/util/slim/QuietHoursHelper;->loadContacts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 203
    .local v1, "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 204
    .local v2, "nextContact":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 205
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;

    .line 206
    .local v0, "contact":Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;
    iget-boolean v3, v0, Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;->mBypassMessage:Z

    if-eqz v3, :cond_0

    .line 207
    const/4 v3, 0x1

    .line 210
    .end local v0    # "contact":Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static inQuietHours(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "option"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 96
    invoke-static {p0, p1, v0, v0}, Lcom/android/internal/util/slim/QuietHoursHelper;->inQuietHours(Landroid/content/Context;Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public static inQuietHours(Landroid/content/Context;Ljava/lang/String;ZZ)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "option"    # Ljava/lang/String;
    .param p2, "withForce"    # Z
    .param p3, "withPause"    # Z

    .prologue
    .line 100
    const/4 v2, 0x1

    .line 101
    .local v2, "mode":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "quiet_hours_enabled"

    const/4 v10, 0x0

    const/4 v11, -0x3

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_1

    const/4 v3, 0x1

    .line 104
    .local v3, "quietHoursEnabled":Z
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "quiet_hours_start"

    const/4 v10, 0x0

    const/4 v11, -0x3

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    .line 107
    .local v7, "quietHoursStart":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "quiet_hours_end"

    const/4 v10, 0x0

    const/4 v11, -0x3

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 110
    .local v4, "quietHoursEnd":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "quiet_hours_paused"

    const/4 v10, 0x0

    const/4 v11, -0x3

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    .line 113
    .local v6, "quietHoursPaused":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "quiet_hours_forced"

    const/4 v10, 0x0

    const/4 v11, -0x3

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 117
    .local v5, "quietHoursForced":I
    if-eqz p1, :cond_0

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, -0x3

    invoke-static {v8, p1, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_2

    const/4 v2, 0x1

    .line 123
    :cond_0
    :goto_1
    if-eqz v3, :cond_a

    if-eqz v2, :cond_a

    .line 125
    if-eqz p3, :cond_3

    const/4 v8, 0x1

    if-ne v6, v8, :cond_3

    .line 126
    const/4 v8, 0x0

    .line 147
    :goto_2
    return v8

    .line 101
    .end local v3    # "quietHoursEnabled":Z
    .end local v4    # "quietHoursEnd":I
    .end local v5    # "quietHoursForced":I
    .end local v6    # "quietHoursPaused":I
    .end local v7    # "quietHoursStart":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 118
    .restart local v3    # "quietHoursEnabled":Z
    .restart local v4    # "quietHoursEnd":I
    .restart local v5    # "quietHoursForced":I
    .restart local v6    # "quietHoursPaused":I
    .restart local v7    # "quietHoursStart":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 129
    :cond_3
    if-eqz p2, :cond_4

    const/4 v8, 0x1

    if-ne v5, v8, :cond_4

    .line 130
    const/4 v8, 0x1

    goto :goto_2

    .line 133
    :cond_4
    if-ne v7, v4, :cond_5

    .line 134
    const/4 v8, 0x1

    goto :goto_2

    .line 137
    :cond_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 138
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v8, 0xd

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 139
    const/16 v8, 0xb

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0x3c

    const/16 v9, 0xc

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int v1, v8, v9

    .line 140
    .local v1, "minutes":I
    if-ge v4, v7, :cond_8

    .line 142
    if-ge v1, v7, :cond_6

    if-ge v1, v4, :cond_7

    :cond_6
    const/4 v8, 0x1

    goto :goto_2

    :cond_7
    const/4 v8, 0x0

    goto :goto_2

    .line 144
    :cond_8
    if-lt v1, v7, :cond_9

    if-ge v1, v4, :cond_9

    const/4 v8, 0x1

    goto :goto_2

    :cond_9
    const/4 v8, 0x0

    goto :goto_2

    .line 147
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "minutes":I
    :cond_a
    const/4 v8, 0x0

    goto :goto_2
.end method

.method public static isCallBypass(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 166
    invoke-static {p0}, Lcom/android/internal/util/slim/QuietHoursHelper;->loadContacts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 167
    .local v1, "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 168
    .local v2, "nextContact":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 169
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;

    .line 170
    .local v0, "contact":Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;
    iget-object v3, v0, Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;->mNumber:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    iget-boolean v3, v0, Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;->mBypassCall:Z

    .line 174
    .end local v0    # "contact":Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isMessageBypass(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 190
    invoke-static {p0}, Lcom/android/internal/util/slim/QuietHoursHelper;->loadContacts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 191
    .local v1, "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 192
    .local v2, "nextContact":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 193
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;

    .line 194
    .local v0, "contact":Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;
    iget-object v3, v0, Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;->mNumber:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 195
    iget-boolean v3, v0, Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;->mBypassMessage:Z

    .line 198
    .end local v0    # "contact":Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isWhitelistContact(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 226
    invoke-static {p0}, Lcom/android/internal/util/slim/QuietHoursHelper;->loadContacts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 227
    .local v1, "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 228
    .local v2, "nextContact":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 229
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;

    .line 230
    .local v0, "contact":Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;
    iget-object v3, v0, Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;->mNumber:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 231
    const/4 v3, 0x1

    .line 234
    .end local v0    # "contact":Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static loadContacts(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v1, "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "quiet_hours_whitelist"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 154
    .local v4, "str":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 155
    const-string v5, "\\|\\|"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, "parts":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_0

    .line 157
    new-instance v0, Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;

    invoke-direct {v0}, Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;-><init>()V

    .line 158
    .local v0, "contact":Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;
    aget-object v5, v3, v2

    invoke-virtual {v0, v5}, Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;->fromString(Ljava/lang/String;)V

    .line 159
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    .end local v0    # "contact":Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;
    .end local v2    # "i":I
    .end local v3    # "parts":[Ljava/lang/String;
    :cond_0
    return-object v1
.end method
