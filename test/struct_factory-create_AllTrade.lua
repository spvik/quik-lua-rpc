package.path = "../?.lua;" .. package.path

require 'busted.runner'()

describe("The function utils.struct_factory.create_AllTrade", function()
    
  local qlua_structs = require("qlua.rpc.qlua_structures_pb")
    
  local sut = require("utils.struct_factory")
  
  describe("WHEN given no alltrade", function()
      
    it("SHOULD raise an error", function()
      assert.has_error(sut.create_AllTrade, "No alltrade provided.")
    end)
  end)
  
  -----

  describe("WHEN given an alltrade", function()
      
    local alltrade, numeric_fields_names
    
    local nonnullable_fields_names = {"trade_num", "flags", "price", "qty", "sec_code", "class_code", "datetime", "period"}
    local nullable_fields_names = {"value", "accruedint", "yield", "settlecode", "reporate", "repovalue", "repo2value", "repoterm", "open_interest", "exchange_code"}
    
    setup(function()
        
      alltrade = {
        trade_num = 1234567890,
        flags = 0x04,
        price = 19.90,
        qty = 250,
        value = 4975.0,
        accruedint = 1.0,
        yield = 2.1,
        settlecode = "test-settlecode",
        reporate = 3.59,
        repovalue = 2.78,
        repo2value = 8.72,
        repoterm = 28,
        sec_code = "AFKS",
        class_code = "TQBR",
        datetime = {
          mcs = 59,
          ms = 49,
          sec = 39,
          min = 29,
          hour = 10,
          day = 9,
          week_day = 1,
          month = 7,
          year = 2017
        },
        period = 1,
        open_interest = 100500,
        exchange_code = "MOEX"
      }
      
    end)
  
    teardown(function()
      alltrade = nil
    end)
  
    it("SHOULD return an equal protobuf AllTrade struct", function()
        
      local result = sut.create_AllTrade(alltrade)
        
      -- check the result is a protobuf AllTrade structure
      local expected_meta = getmetatable( qlua_structs.AllTrade() )
      local actual_meta = getmetatable(result)
      assert.are.equal(expected_meta, actual_meta)
      
      -- check that the result has the same data as the given alltrade
      local t_data = {}
      for field, value in result:ListFields() do
        local key = tostring(field.name)
        if type(alltrade[key]) == 'number' then 
          t_data[key] = tonumber(value)
        else
          t_data[key] = value
        end
      end
      
      t_data.datetime = {} -- it's a protobuf DateTimeEntry in the result, so we should reconstruct it separately as it contains additional protobuf fields.
      for field, value in result.datetime:ListFields() do
        t_data.datetime[tostring(field.name)] = tonumber(value)
      end
      
      assert.are.same(alltrade, t_data)
      
    end)
  
    describe("AND an existing AllTrade protobuf struct", function()
      
      local existing_struct
      
      setup(function()
        existing_struct = qlua_structs.AllTrade()
      end)
  
      teardown(function()
        existing_struct = nil
      end)
    
      it("SHOULD return the existing AllTrade protobuf struct which equals (data-wide, not literally) to the given AllTrade table", function()
          
        local result = sut.create_AllTrade(alltrade, existing_struct)
        
        assert.are.equals(existing_struct, result)
        
        -- check that the result has the same data as the given alltrade table
        local t_data = {}
        for field, value in result:ListFields() do
          local key = tostring(field.name)
          if type(alltrade[key]) == 'number' then 
            t_data[key] = tonumber(value)
          else
            t_data[key] = value
          end
        end
        
        t_data.datetime = {} -- it's a protobuf DateTimeEntry in the result, so we should reconstruct it separately as it contains additional protobuf fields.
        for field, value in result.datetime:ListFields() do
          t_data.datetime[tostring(field.name)] = tonumber(value)
        end

        assert.are.same(alltrade, t_data)
      end)
    end)
      
    ----- dynamic test generation -----
      
    for _, field_name in ipairs(nonnullable_fields_names) do
      
      -----
      
      describe(string.format("with no field '%s'", field_name), function()

        local stored_value
    
        setup(function()
          stored_value = alltrade[field_name]
          alltrade[field_name] = nil
        end)
    
        teardown(function()
          alltrade[field_name] = stored_value
          stored_value = nil
        end)
    
        it("SHOULD raise an error", function()
          assert.has_error(function() sut.create_AllTrade(alltrade) end)
        end)
      end)
    
      -----
    end
      
    for _, field_name in ipairs(nullable_fields_names) do
      
      -----
      
      describe(string.format("with no field '%s'", field_name), function()
          
        local stored_value
    
        setup(function()
          stored_value = alltrade[field_name]
          alltrade[field_name] = nil
        end)
    
        teardown(function()
          alltrade[field_name] = stored_value
          stored_value = nil
        end)
    
        it("SHOULD return a struct with an empty string in that field", function()
          
          local result = sut.create_AllTrade(alltrade)
          assert.are.equal("", result[field_name])
        end)
      end)
    
      -----
    end
  end)
  
  -----
  
  describe("WHEN given an alltrade with CP1251-encoded values", function()
      
    local utils = require("utils.utils")
    
    local alltrade_utf8, alltrade_cp1251
    
    setup(function()
      
      alltrade_utf8 = {
        trade_num = 1234567890,
        flags = 0x04,
        price = 19.90,
        qty = 250,
        value = 4975.0,
        accruedint = 1.0,
        yield = 2.1,
        settlecode = "тестовый сеттл код",
        reporate = 3.59,
        repovalue = 2.78,
        repo2value = 8.72,
        repoterm = 28,
        sec_code = "AFKS",
        class_code = "TQBR",
        datetime = {
          mcs = 59,
          ms = 49,
          sec = 39,
          min = 29,
          hour = 10,
          day = 9,
          week_day = 1,
          month = 7,
          year = 2017
        },
        period = 1,
        open_interest = 100500,
        exchange_code = "тестовый эксчейндж код"
      }
      
      -- the list of fields that potentially may be encoded in CP1251 encoding
      local fields_that_may_be_encoded_in_cp1251 = {
        settlecode = true, 
        exchange_code = true
      }
      
      alltrade_cp1251 = {}
      for k, v in pairs(alltrade_utf8) do
        if fields_that_may_be_encoded_in_cp1251[k] then
          alltrade_cp1251[k] = utils.Utf8ToCp1251( alltrade_utf8[k] )
        else
          alltrade_cp1251[k] = v
        end
      end
    end)
  
    teardown(function()
      alltrade_utf8 = nil
      alltrade_cp1251 = nil
    end)
  
    it("SHOULD return a struct with UTF8 encoded values", function()
      
      local result = sut.create_AllTrade(alltrade_cp1251)
      
      -- check that the result has the same data as the given alltrade
      local t_data = {}
      for field, value in result:ListFields() do
        local key = tostring(field.name)
        if type(alltrade_utf8[key]) == 'number' then 
          t_data[key] = tonumber(value)
        else
          t_data[key] = value
        end
      end
     
      t_data.datetime = {} -- it's a protobuf DateTimeEntry in the result, so we should reconstruct it separately as it contains additional protobuf fields.
      for field, value in result.datetime:ListFields() do
        t_data.datetime[tostring(field.name)] = tonumber(value)
      end
      
      assert.are.same(alltrade_utf8, t_data)
    end)
  
  end)
end)
