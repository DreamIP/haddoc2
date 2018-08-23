------------------------------------------------------------------------------
-- Title      : maxPool
-- Project    : Haddoc2
------------------------------------------------------------------------------
-- File       : maxPool.vhd
-- Author     : K. Abdelouahab
-- Company    : Institut Pascal
-- Last update: 2018-08-23
------------------------------------------------------------------------------
-- Description: 2x2 subsampling with max operator
--
--         -------         -------
--        |       |       |       |
--    --->| PoolH |------>| PoolV | --->
--        |       |       |       |
--         -------         -------
--
-----------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity maxPool is
  generic(
    PIXEL_SIZE  : integer;
    IMAGE_WIDTH : integer;
    KERNEL_SIZE : integer
    );

  port(
    clk      : in  std_logic;
    reset_n  : in  std_logic;
    enable   : in  std_logic;
    in_data  : in  std_logic_vector (PIXEL_SIZE - 1 downto 0);
    in_dv    : in  std_logic;
    in_fv    : in  std_logic;
    out_data : out std_logic_vector (PIXEL_SIZE - 1 downto 0);
    out_dv   : out std_logic;
    out_fv   : out std_logic
    );
end entity;

architecture rtl of maxPool is
  --------------------------------------------------------------------------
  -- Signals
  --------------------------------------------------------------------------
  signal connect_data : std_logic_vector (PIXEL_SIZE - 1 downto 0);
  signal connect_dv   : std_logic;
  signal connect_fv   : std_logic;

  --------------------------------------------------------------------------
  -- components
  --------------------------------------------------------------------------
  component poolH
    generic(
      PIXEL_SIZE  : integer;
      IMAGE_WIDTH : integer;
      KERNEL_SIZE : integer
      );

    port(
      clk      : in  std_logic;
      reset_n  : in  std_logic;
      enable   : in  std_logic;
      in_data  : in  std_logic_vector (PIXEL_SIZE - 1 downto 0);
      in_dv    : in  std_logic;
      in_fv    : in  std_logic;
      out_data : out std_logic_vector (PIXEL_SIZE - 1 downto 0);
      out_dv   : out std_logic;
      out_fv   : out std_logic
      );

  end component;
  --------------------------------------------------------------------------
  component poolV
    generic(
      PIXEL_SIZE  : integer;
      IMAGE_WIDTH : integer;
      KERNEL_SIZE : integer
      );

    port(
      clk      : in  std_logic;
      reset_n  : in  std_logic;
      enable   : in  std_logic;
      in_data  : in  std_logic_vector (PIXEL_SIZE - 1 downto 0);
      in_dv    : in  std_logic;
      in_fv    : in  std_logic;
      out_data : out std_logic_vector (PIXEL_SIZE - 1 downto 0);
      out_dv   : out std_logic;
      out_fv   : out std_logic
      );

  end component;
  --------------------------------------------------------------------------

begin
  poolv_inst : poolV
    generic map (
      PIXEL_SIZE  => PIXEL_SIZE,
      KERNEL_SIZE => KERNEL_SIZE,
      IMAGE_WIDTH => IMAGE_WIDTH
      )

    port map (
      clk      => clk,
      reset_n  => reset_n,
      enable   => enable,
      in_data  => in_data,
      in_dv    => in_dv,
      in_fv    => in_fv,
      out_data => connect_data,
      out_dv   => connect_dv,
      out_fv   => connect_fv
      );

  --------------------------------------------------------------------------

  poolh_inst : poolH
    generic map (
      PIXEL_SIZE  => PIXEL_SIZE,
      KERNEL_SIZE => KERNEL_SIZE,
      IMAGE_WIDTH => IMAGE_WIDTH
      )

    port map (
      clk      => clk,
      reset_n  => reset_n,
      enable   => enable,
      in_data  => connect_data,
      in_dv    => connect_dv,
      in_fv    => connect_fv,
      out_data => out_data,
      out_dv   => out_dv,
      out_fv   => out_fv
      );

end rtl;
