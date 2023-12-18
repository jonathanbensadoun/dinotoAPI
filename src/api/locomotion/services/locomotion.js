'use strict';

/**
 * locomotion service
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::locomotion.locomotion');
